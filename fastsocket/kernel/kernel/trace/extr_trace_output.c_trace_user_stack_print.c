
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userstack_entry {int dummy; } ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int seq_print_userip_objs (struct userstack_entry*,struct trace_seq*,int) ;
 int trace_assign_type (struct userstack_entry*,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t trace_user_stack_print(struct trace_iterator *iter,
      int flags)
{
 struct userstack_entry *field;
 struct trace_seq *s = &iter->seq;

 trace_assign_type(field, iter->ent);

 if (!trace_seq_puts(s, "<user stack trace>\n"))
  goto partial;

 if (!seq_print_userip_objs(field, s, flags))
  goto partial;

 return TRACE_TYPE_HANDLED;

 partial:
 return TRACE_TYPE_PARTIAL_LINE;
}
