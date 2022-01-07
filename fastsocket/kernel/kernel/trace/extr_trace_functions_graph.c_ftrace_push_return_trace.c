
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int curr_ret_stack; TYPE_1__* ret_stack; int trace_overrun; } ;
struct TYPE_3__ {unsigned long ret; unsigned long func; unsigned long long calltime; unsigned long fp; scalar_t__ subtime; } ;


 int EBUSY ;
 int FTRACE_RETFUNC_DEPTH ;
 int atomic_inc (int *) ;
 int barrier () ;
 TYPE_2__* current ;
 int smp_rmb () ;
 unsigned long long trace_clock_local () ;

int
ftrace_push_return_trace(unsigned long ret, unsigned long func, int *depth,
    unsigned long frame_pointer)
{
 unsigned long long calltime;
 int index;

 if (!current->ret_stack)
  return -EBUSY;





 smp_rmb();


 if (current->curr_ret_stack == FTRACE_RETFUNC_DEPTH - 1) {
  atomic_inc(&current->trace_overrun);
  return -EBUSY;
 }

 calltime = trace_clock_local();

 index = ++current->curr_ret_stack;
 barrier();
 current->ret_stack[index].ret = ret;
 current->ret_stack[index].func = func;
 current->ret_stack[index].calltime = calltime;
 current->ret_stack[index].subtime = 0;
 current->ret_stack[index].fp = frame_pointer;
 *depth = index;

 return 0;
}
