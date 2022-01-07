
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct special_entry {int arg3; int arg2; int arg1; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int SEQ_PUT_FIELD_RET (struct trace_seq*,int ) ;
 int TRACE_TYPE_HANDLED ;
 int trace_assign_type (struct special_entry*,int ) ;

__attribute__((used)) static enum print_line_t trace_special_bin(struct trace_iterator *iter,
        int flags)
{
 struct special_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 SEQ_PUT_FIELD_RET(s, field->arg1);
 SEQ_PUT_FIELD_RET(s, field->arg2);
 SEQ_PUT_FIELD_RET(s, field->arg3);

 return TRACE_TYPE_HANDLED;
}
