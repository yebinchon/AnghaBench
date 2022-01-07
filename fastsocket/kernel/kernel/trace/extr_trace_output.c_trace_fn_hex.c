
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct ftrace_entry {int parent_ip; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int SEQ_PUT_HEX_FIELD_RET (struct trace_seq*,int ) ;
 int TRACE_TYPE_HANDLED ;
 int trace_assign_type (struct ftrace_entry*,int ) ;

__attribute__((used)) static enum print_line_t trace_fn_hex(struct trace_iterator *iter, int flags)
{
 struct ftrace_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 SEQ_PUT_HEX_FIELD_RET(s, field->ip);
 SEQ_PUT_HEX_FIELD_RET(s, field->parent_ip);

 return TRACE_TYPE_HANDLED;
}
