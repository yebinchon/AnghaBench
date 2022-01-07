
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; } ;
struct ftrace_graph_ret_entry {int dummy; } ;
struct ftrace_graph_ent {int func; } ;
struct ftrace_graph_ent_entry {struct ftrace_graph_ent graph_ent; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_GRAPH_ENT ;
 int TRACE_TYPE_PARTIAL_LINE ;
 struct ftrace_graph_ret_entry* get_return_for_leaf (struct trace_iterator*,struct ftrace_graph_ent_entry*) ;
 int print_graph_entry_leaf (struct trace_iterator*,struct ftrace_graph_ent_entry*,struct ftrace_graph_ret_entry*,struct trace_seq*,int ) ;
 int print_graph_entry_nested (struct trace_iterator*,struct ftrace_graph_ent_entry*,struct trace_seq*,int,int ) ;
 scalar_t__ print_graph_prologue (struct trace_iterator*,struct trace_seq*,int ,int ,int ) ;

__attribute__((used)) static enum print_line_t
print_graph_entry(struct ftrace_graph_ent_entry *field, struct trace_seq *s,
   struct trace_iterator *iter, u32 flags)
{
 int cpu = iter->cpu;
 struct ftrace_graph_ent *call = &field->graph_ent;
 struct ftrace_graph_ret_entry *leaf_ret;

 if (print_graph_prologue(iter, s, TRACE_GRAPH_ENT, call->func, flags))
  return TRACE_TYPE_PARTIAL_LINE;

 leaf_ret = get_return_for_leaf(iter, field);
 if (leaf_ret)
  return print_graph_entry_leaf(iter, field, leaf_ret, s, flags);
 else
  return print_graph_entry_nested(iter, field, s, cpu, flags);

}
