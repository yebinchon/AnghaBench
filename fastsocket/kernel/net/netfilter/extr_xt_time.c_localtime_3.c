
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct xtm {unsigned int dse; unsigned int monthday; unsigned int month; } ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int DSE_FIRST ;
 unsigned int* days_since_epoch ;
 unsigned int* days_since_leapyear ;
 unsigned int* days_since_year ;
 scalar_t__ is_leap (unsigned int) ;

__attribute__((used)) static void localtime_3(struct xtm *r, time_t time)
{
 unsigned int year, i, w = r->dse;
 for (i = 0, year = DSE_FIRST; days_since_epoch[i] > w;
     ++i, --year)
                 ;

 w -= days_since_epoch[i];
 if (is_leap(year)) {

  for (i = ARRAY_SIZE(days_since_leapyear) - 1;
      i > 0 && days_since_leapyear[i] > w; --i)
                  ;
  r->monthday = w - days_since_leapyear[i] + 1;
 } else {
  for (i = ARRAY_SIZE(days_since_year) - 1;
      i > 0 && days_since_year[i] > w; --i)
                  ;
  r->monthday = w - days_since_year[i] + 1;
 }

 r->month = i + 1;
 return;
}
