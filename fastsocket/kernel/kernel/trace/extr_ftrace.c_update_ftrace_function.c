
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* ftrace_func_t ;
struct TYPE_3__ {int flags; void* func; struct TYPE_3__* next; } ;


 int FTRACE_OPS_FL_DYNAMIC ;
 void* __ftrace_trace_function ;
 void* __ftrace_trace_function_delay ;
 TYPE_1__ ftrace_list_end ;
 TYPE_1__* ftrace_ops_list ;
 void* ftrace_ops_list_func ;
 void* ftrace_test_stop_func ;
 void* ftrace_trace_function ;
 int update_global_ops () ;

__attribute__((used)) static void update_ftrace_function(void)
{
 ftrace_func_t func;

 update_global_ops();






 if (ftrace_ops_list == &ftrace_list_end ||
     (ftrace_ops_list->next == &ftrace_list_end &&
      !(ftrace_ops_list->flags & FTRACE_OPS_FL_DYNAMIC)))
  func = ftrace_ops_list->func;
 else
  func = ftrace_ops_list_func;
 __ftrace_trace_function = func;

 ftrace_trace_function = ftrace_test_stop_func;

}
