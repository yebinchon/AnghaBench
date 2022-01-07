
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* ctime (int const*) ;
 int memcpy (char*,char*,int) ;

char *
ctime_r(const time_t *t, char *dst)
{
 char *p = ctime(t);
 if (p == ((void*)0))
  return ((void*)0);
 memcpy(dst, p, 26);
 return dst;
}
