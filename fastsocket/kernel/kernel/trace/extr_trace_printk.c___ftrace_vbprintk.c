
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int TRACE_ITER_PRINTK ;
 int trace_flags ;
 int trace_vbprintk (unsigned long,char const*,int ) ;
 scalar_t__ unlikely (int) ;

int __ftrace_vbprintk(unsigned long ip, const char *fmt, va_list ap)
 {
 if (unlikely(!fmt))
  return 0;

 if (!(trace_flags & TRACE_ITER_PRINTK))
  return 0;

 return trace_vbprintk(ip, fmt, ap);
}
