
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int seq; int ent; } ;
struct special_entry {int arg3; int arg2; int arg1; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct special_entry*,int ) ;
 int trace_seq_printf (int *,char*,int ,int ,int ) ;

__attribute__((used)) static enum print_line_t trace_special_print(struct trace_iterator *iter,
          int flags)
{
 struct special_entry *field;

 trace_assign_type(field, iter->ent);

 if (!trace_seq_printf(&iter->seq, "# %ld %ld %ld\n",
         field->arg1,
         field->arg2,
         field->arg3))
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
