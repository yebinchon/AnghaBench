
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int seq; int ent; } ;
struct print_entry {int buf; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct print_entry*,int ) ;
 int trace_seq_printf (int *,char*,int ,int ) ;

__attribute__((used)) static enum print_line_t trace_print_raw(struct trace_iterator *iter, int flags)
{
 struct print_entry *field;

 trace_assign_type(field, iter->ent);

 if (!trace_seq_printf(&iter->seq, "# %lx %s", field->ip, field->buf))
  goto partial;

 return TRACE_TYPE_HANDLED;

 partial:
 return TRACE_TYPE_PARTIAL_LINE;
}
