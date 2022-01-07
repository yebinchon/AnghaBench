
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {char* buffer; int len; } ;
struct trace_print_flags {unsigned long mask; scalar_t__ name; } ;


 int trace_seq_printf (struct trace_seq*,char*,unsigned long) ;
 int trace_seq_putc (struct trace_seq*,int ) ;
 int trace_seq_puts (struct trace_seq*,scalar_t__) ;

const char *
ftrace_print_symbols_seq(struct trace_seq *p, unsigned long val,
    const struct trace_print_flags *symbol_array)
{
 int i;
 const char *ret = p->buffer + p->len;

 for (i = 0; symbol_array[i].name; i++) {

  if (val != symbol_array[i].mask)
   continue;

  trace_seq_puts(p, symbol_array[i].name);
  break;
 }

 if (ret == (const char *)(p->buffer + p->len))
  trace_seq_printf(p, "0x%lx", val);

 trace_seq_putc(p, 0);

 return ret;
}
