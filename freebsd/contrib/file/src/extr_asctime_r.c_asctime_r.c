
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 char* asctime (struct tm const*) ;
 int memcpy (char*,char*,int) ;

char *
asctime_r(const struct tm *t, char *dst)
{
 char *p = asctime(t);
 if (p == ((void*)0))
  return ((void*)0);
 memcpy(dst, p, 26);
 return dst;
}
