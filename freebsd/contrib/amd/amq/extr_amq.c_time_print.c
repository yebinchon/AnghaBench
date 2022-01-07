
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_type ;
typedef int time_t ;
struct tm {int tm_mon; int tm_mday; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;


 struct tm* localtime (int *) ;
 int printf (char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
time_print(time_type tt)
{
  time_t t = (time_t)(intptr_t)tt;
  struct tm *tp = localtime(&t);
  printf("%02d/%02d/%04d %02d:%02d:%02d",
  tp->tm_mon + 1, tp->tm_mday,
  tp->tm_year < 1900 ? tp->tm_year + 1900 : tp->tm_year,
  tp->tm_hour, tp->tm_min, tp->tm_sec);
}
