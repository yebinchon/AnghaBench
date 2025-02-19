
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct trace_seq {int buffer_size; int len; scalar_t__ buffer; } ;


 int TRACE_SEQ_CHECK (struct trace_seq*) ;
 int expand_buffer (struct trace_seq*) ;
 int vsnprintf (scalar_t__,int,char const*,int ) ;

int
trace_seq_vprintf(struct trace_seq *s, const char *fmt, va_list args)
{
 int len;
 int ret;

 TRACE_SEQ_CHECK(s);

 try_again:
 len = (s->buffer_size - 1) - s->len;

 ret = vsnprintf(s->buffer + s->len, len, fmt, args);

 if (ret >= len) {
  expand_buffer(s);
  goto try_again;
 }

 s->len += ret;

 return len;
}
