
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDF_BASE_YEAR ;
 scalar_t__ isleap (int) ;

__attribute__((used)) static int
cdf_getdays(int year)
{
 int days = 0;
 int y;

 for (y = CDF_BASE_YEAR; y < year; y++)
  days += isleap(y) + 365;

 return days;
}
