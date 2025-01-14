
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {scalar_t__ type; } ;
struct hw_branch_entry {int from; int to; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 scalar_t__ TRACE_HW_BRANCHES ;
 unsigned long TRACE_ITER_SYM_OFFSET ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int TRACE_TYPE_UNHANDLED ;
 scalar_t__ seq_print_ip_sym (struct trace_seq*,int ,unsigned long) ;
 int trace_assign_type (struct hw_branch_entry*,struct trace_entry*) ;
 scalar_t__ trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static enum print_line_t bts_trace_print_line(struct trace_iterator *iter)
{
 unsigned long symflags = TRACE_ITER_SYM_OFFSET;
 struct trace_entry *entry = iter->ent;
 struct trace_seq *seq = &iter->seq;
 struct hw_branch_entry *it;

 trace_assign_type(it, entry);

 if (entry->type == TRACE_HW_BRANCHES) {
  if (trace_seq_printf(seq, "%4d  ", iter->cpu) &&
      seq_print_ip_sym(seq, it->to, symflags) &&
      trace_seq_printf(seq, "\t  <-  ") &&
      seq_print_ip_sym(seq, it->from, symflags) &&
      trace_seq_printf(seq, "\n"))
   return TRACE_TYPE_HANDLED;
  return TRACE_TYPE_PARTIAL_LINE;
 }
 return TRACE_TYPE_UNHANDLED;
}
