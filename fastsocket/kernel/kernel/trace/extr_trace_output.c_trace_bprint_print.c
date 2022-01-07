
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {int dummy; } ;
struct bprint_entry {int buf; int fmt; int ip; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int seq_print_ip_sym (struct trace_seq*,int ,int) ;
 int trace_assign_type (struct bprint_entry*,struct trace_entry*) ;
 int trace_seq_bprintf (struct trace_seq*,int ,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
trace_bprint_print(struct trace_iterator *iter, int flags)
{
 struct trace_entry *entry = iter->ent;
 struct trace_seq *s = &iter->seq;
 struct bprint_entry *field;

 trace_assign_type(field, entry);

 if (!seq_print_ip_sym(s, field->ip, flags))
  goto partial;

 if (!trace_seq_puts(s, ": "))
  goto partial;

 if (!trace_seq_bprintf(s, field->fmt, field->buf))
  goto partial;

 return TRACE_TYPE_HANDLED;

 partial:
 return TRACE_TYPE_PARTIAL_LINE;
}
