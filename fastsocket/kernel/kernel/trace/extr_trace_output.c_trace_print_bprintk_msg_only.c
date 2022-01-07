
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int dummy; } ;
struct bprint_entry {int buf; int fmt; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct bprint_entry*,struct trace_entry*) ;
 int trace_seq_bprintf (struct trace_seq*,int ,int ) ;

enum print_line_t trace_print_bprintk_msg_only(struct trace_iterator *iter)
{
 struct trace_seq *s = &iter->seq;
 struct trace_entry *entry = iter->ent;
 struct bprint_entry *field;
 int ret;

 trace_assign_type(field, entry);

 ret = trace_seq_bprintf(s, field->fmt, field->buf);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
