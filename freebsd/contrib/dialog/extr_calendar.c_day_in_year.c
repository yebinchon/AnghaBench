
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ days_per_month (int,int) ;

__attribute__((used)) static int
day_in_year(int year, int month, int day)
{
    int result = day;
    while (--month >= 1)
 result += days_per_month(year, month);
    return result;
}
