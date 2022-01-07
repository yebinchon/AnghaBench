
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct print_entry {int buf; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int seq_print_ip_sym (struct trace_seq*,int ,int) ;
 int trace_assign_type (struct print_entry*,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;

__attribute__((used)) static enum print_line_t trace_print_print(struct trace_iterator *iter,
        int flags)
{
 struct print_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 if (!seq_print_ip_sym(s, field->ip, flags))
  goto partial;

 if (!trace_seq_printf(s, ": %s", field->buf))
  goto partial;

 return TRACE_TYPE_HANDLED;

 partial:
 return TRACE_TYPE_PARTIAL_LINE;
}
