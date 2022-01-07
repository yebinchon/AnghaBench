
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int KSYM_SYMBOL_LEN ;
 int kallsyms_lookup (unsigned long,int *,int *,int *,char*) ;
 char* kretprobed (char*) ;
 int trace_seq_printf (struct trace_seq*,char const*,char const*) ;

__attribute__((used)) static int
seq_print_sym_short(struct trace_seq *s, const char *fmt, unsigned long address)
{
 return 1;
}
