
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct trace_seq {int len; scalar_t__ buffer; } ;


 int PAGE_SIZE ;
 int vsnprintf (scalar_t__,int,char const*,int ) ;

int
trace_seq_vprintf(struct trace_seq *s, const char *fmt, va_list args)
{
 int len = (PAGE_SIZE - 1) - s->len;
 int ret;

 if (!len)
  return 0;

 ret = vsnprintf(s->buffer + s->len, len, fmt, args);


 if (ret >= len)
  return 0;

 s->len += ret;

 return len;
}
