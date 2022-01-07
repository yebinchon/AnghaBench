
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MONTHS ;

__attribute__((used)) static void
adjust_year_month(int *year, int *month)
{
    while (*month < 0) {
 *month += MAX_MONTHS;
 *year -= 1;
    }
    while (*month >= MAX_MONTHS) {
 *month -= MAX_MONTHS;
 *year += 1;
    }
}
