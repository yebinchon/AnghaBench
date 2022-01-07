
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct print_flag_sym {struct print_flag_sym* next; int str; int value; } ;


 int trace_seq_printf (struct trace_seq*,char*,int ,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static void print_fields(struct trace_seq *s, struct print_flag_sym *field)
{
 trace_seq_printf(s, "{ %s, %s }", field->value, field->str);
 if (field->next) {
  trace_seq_puts(s, ", ");
  print_fields(s, field->next);
 }
}
