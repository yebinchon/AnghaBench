
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ likely (int) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int vscnprintf(char *buf, size_t size, const char *fmt, va_list args)
{
 int i;

 i=vsnprintf(buf,size,fmt,args);

 if (likely(i < size))
  return i;
 if (size != 0)
  return size - 1;
 return 0;
}
