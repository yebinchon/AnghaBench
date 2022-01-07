
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int val; } ;


 int EINVAL ;
 int TRACE_FUNC_OPT_STACK ;
 TYPE_1__ func_flags ;
 int register_ftrace_function (int *) ;
 int trace_ops ;
 int trace_stack_ops ;
 int unregister_ftrace_function (int *) ;

__attribute__((used)) static int func_set_flag(u32 old_flags, u32 bit, int set)
{
 if (bit == TRACE_FUNC_OPT_STACK) {

  if (!!set == !!(func_flags.val & TRACE_FUNC_OPT_STACK))
   return 0;

  if (set) {
   unregister_ftrace_function(&trace_ops);
   register_ftrace_function(&trace_stack_ops);
  } else {
   unregister_ftrace_function(&trace_stack_ops);
   register_ftrace_function(&trace_ops);
  }

  return 0;
 }

 return -EINVAL;
}
