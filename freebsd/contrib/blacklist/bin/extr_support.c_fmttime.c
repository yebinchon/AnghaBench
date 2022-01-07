
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef int intmax_t ;


 int * localtime_r (scalar_t__*,struct tm*) ;
 int snprintf (char*,size_t,char*,int ) ;
 int strftime (char*,size_t,char*,struct tm*) ;

const char *
fmttime(char *b, size_t l, time_t t)
{
 struct tm tm;
 if (localtime_r(&t, &tm) == ((void*)0))
  snprintf(b, l, "*%jd*", (intmax_t)t);
 else
  strftime(b, l, "%Y/%m/%d %H:%M:%S", &tm);
 return b;
}
