
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int dummy; } ;
struct print_entry {int buf; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct print_entry*,struct trace_entry*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;

enum print_line_t trace_print_printk_msg_only(struct trace_iterator *iter)
{
 struct trace_seq *s = &iter->seq;
 struct trace_entry *entry = iter->ent;
 struct print_entry *field;
 int ret;

 trace_assign_type(field, entry);

 ret = trace_seq_printf(s, "%s", field->buf);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
