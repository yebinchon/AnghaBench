
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtime (int const*) ;
 int memcpy (struct tm*,struct tm*,int) ;

struct tm *
gmtime_r(const time_t *t, struct tm *tm)
{
 struct tm *tmp = gmtime(t);
 if (tmp == ((void*)0))
  return ((void*)0);
 memcpy(tm, tmp, sizeof(*tm));
 return tmp;
}
