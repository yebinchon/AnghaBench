
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
month_length(int year, int month)
{
 static const int base_month_length[] = {
  31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
 };

 int x;

 x = base_month_length[month - 1];
 if (month == 2 && year % 4 == 0
  && (year % 100 != 0 || year % 400 == 0))
 {
  x ++;
 }
 return x;
}
