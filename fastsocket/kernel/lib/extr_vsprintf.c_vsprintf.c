
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int INT_MAX ;
 int vsnprintf (char*,int ,char const*,int ) ;

int vsprintf(char *buf, const char *fmt, va_list args)
{
 return vsnprintf(buf, INT_MAX, fmt, args);
}
