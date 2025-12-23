file_path<-"D:/MKTM504/tvs/balancesheetnestle.csv"
balance_sheet<-read.csv(file_path, header = TRUE, stringsAsFactors = FALSE)

numeric_data<-balance_sheet[sapply(balance_sheet, is.numeric)]

descriptives<-data.frame(
Mean= sapply(numeric_data, mean, na.rm = TRUE),
Median= sapply(numeric_data, median, na.rm = TRUE),
SD= sapply(numeric_data, sd, na.rm = TRUE),
Min= sapply(numeric_data, min, na.rm = TRUE),
Max= sapply(numeric_data, max, na.rm = TRUE)
)

print(descriptives)