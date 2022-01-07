
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fputs (char*,int ) ;
 int stderr ;
 int vasprintf (char**,char const*,int ) ;
 int xexit (int) ;

int
xvasprintf (char **result, const char *format, va_list args)
{
  int ret = vasprintf (result, format, args);
  if (*result == ((void*)0) || ret < 0)
    {
      fputs ("gengtype: out of memory", stderr);
      xexit (1);
    }
  return ret;
}
