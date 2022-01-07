
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct trace_seq {char* buffer; int len; } ;
struct trace_iterator {TYPE_1__* ent; int cpu; struct fgraph_data* private; } ;
struct trace_event {int (* trace ) (struct trace_iterator*,unsigned long) ;} ;
struct trace_entry {int type; } ;
struct fgraph_data {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_4__ {int depth; } ;
struct TYPE_3__ {int type; } ;



 int TRACE_GRAPH_INDENT ;
 int TRACE_GRAPH_PRINT_DURATION ;
 unsigned long TRACE_ITER_SYM_MASK ;

 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int TRACE_TYPE_UNHANDLED ;
 struct trace_event* ftrace_find_event (int ) ;
 TYPE_2__* per_cpu_ptr (struct fgraph_data*,int ) ;
 int print_graph_overhead (int,struct trace_seq*,int) ;
 scalar_t__ print_graph_prologue (struct trace_iterator*,struct trace_seq*,int ,int ,int) ;
 int stub1 (struct trace_iterator*,unsigned long) ;
 unsigned long trace_flags ;
 int trace_print_bprintk_msg_only (struct trace_iterator*) ;
 int trace_print_printk_msg_only (struct trace_iterator*) ;
 int trace_seq_printf (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t
print_graph_comment(struct trace_seq *s, struct trace_entry *ent,
      struct trace_iterator *iter, u32 flags)
{
 unsigned long sym_flags = (trace_flags & TRACE_ITER_SYM_MASK);
 struct fgraph_data *data = iter->private;
 struct trace_event *event;
 int depth = 0;
 int ret;
 int i;

 if (data)
  depth = per_cpu_ptr(data, iter->cpu)->depth;

 if (print_graph_prologue(iter, s, 0, 0, flags))
  return TRACE_TYPE_PARTIAL_LINE;


 ret = print_graph_overhead(-1, s, flags);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 if (flags & TRACE_GRAPH_PRINT_DURATION) {
  ret = trace_seq_printf(s, "            |  ");
  if (!ret)
   return TRACE_TYPE_PARTIAL_LINE;
 }


 if (depth > 0)
  for (i = 0; i < (depth + 1) * TRACE_GRAPH_INDENT; i++) {
   ret = trace_seq_printf(s, " ");
   if (!ret)
    return TRACE_TYPE_PARTIAL_LINE;
  }


 ret = trace_seq_printf(s, "/* ");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 switch (iter->ent->type) {
 case 129:
  ret = trace_print_bprintk_msg_only(iter);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
  break;
 case 128:
  ret = trace_print_printk_msg_only(iter);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
  break;
 default:
  event = ftrace_find_event(ent->type);
  if (!event)
   return TRACE_TYPE_UNHANDLED;

  ret = event->trace(iter, sym_flags);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
 }


 if (s->buffer[s->len - 1] == '\n') {
  s->buffer[s->len - 1] = '\0';
  s->len--;
 }

 ret = trace_seq_printf(s, " */\n");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
