
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int TRACE_ITER_PRINTK ;
 int trace_flags ;
 int trace_vprintk (unsigned long,char const*,int ) ;

int __ftrace_vprintk(unsigned long ip, const char *fmt, va_list ap)
{
 if (!(trace_flags & TRACE_ITER_PRINTK))
  return 0;

 return trace_vprintk(ip, fmt, ap);
}
