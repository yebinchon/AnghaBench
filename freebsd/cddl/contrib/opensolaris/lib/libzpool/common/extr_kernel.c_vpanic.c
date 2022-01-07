
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int abort () ;
 int assfail (char*,int *,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
vpanic(const char *fmt, va_list adx)
{
 char buf[512];
 (void) vsnprintf(buf, 512, fmt, adx);
 assfail(buf, ((void*)0), 0);
 abort();
}
