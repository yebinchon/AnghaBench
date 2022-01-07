
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {char* buffer; int len; } ;


 int trace_seq_printf (struct trace_seq*,char*,char*,unsigned char const) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *
ftrace_print_hex_seq(struct trace_seq *p, const unsigned char *buf, int buf_len)
{
 int i;
 const char *ret = p->buffer + p->len;

 for (i = 0; i < buf_len; i++)
  trace_seq_printf(p, "%s%2.2x", i == 0 ? "" : " ", buf[i]);

 trace_seq_putc(p, 0);

 return ret;
}
