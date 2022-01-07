
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ftrace_graph_ret {int depth; int overrun; int calltime; scalar_t__ func; } ;
struct TYPE_4__ {int curr_ret_stack; int trace_overrun; TYPE_1__* ret_stack; } ;
struct TYPE_3__ {unsigned long fp; unsigned long ret; int calltime; scalar_t__ func; } ;


 int WARN (int,char*,unsigned long,unsigned long,void*,unsigned long) ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 TYPE_2__* current ;
 int ftrace_graph_stop () ;
 scalar_t__ panic ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ftrace_pop_return_trace(struct ftrace_graph_ret *trace, unsigned long *ret,
   unsigned long frame_pointer)
{
 int index;

 index = current->curr_ret_stack;

 if (unlikely(index < 0)) {
  ftrace_graph_stop();
  WARN_ON(1);

  *ret = (unsigned long)panic;
  return;
 }
 *ret = current->ret_stack[index].ret;
 trace->func = current->ret_stack[index].func;
 trace->calltime = current->ret_stack[index].calltime;
 trace->overrun = atomic_read(&current->trace_overrun);
 trace->depth = index;
}
