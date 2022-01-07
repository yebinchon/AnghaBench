
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int E_ERROR ;
 int exit (int ) ;
 int vwarn (char const*,int ) ;

void
vdie(const char *format, va_list alist)
{
 vwarn(format, alist);
 exit(E_ERROR);
}
