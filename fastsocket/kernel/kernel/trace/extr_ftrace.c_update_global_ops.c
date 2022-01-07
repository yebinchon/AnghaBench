
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ftrace_func_t ;
struct TYPE_5__ {int func; struct TYPE_5__* next; } ;
struct TYPE_4__ {int func; } ;


 TYPE_2__* ftrace_global_list ;
 int ftrace_global_list_func ;
 TYPE_2__ ftrace_list_end ;
 int ftrace_pid_func ;
 int ftrace_pids ;
 TYPE_1__ global_ops ;
 int list_empty (int *) ;
 int set_ftrace_pid_function (int ) ;

__attribute__((used)) static void update_global_ops(void)
{
 ftrace_func_t func;






 if (ftrace_global_list == &ftrace_list_end ||
     ftrace_global_list->next == &ftrace_list_end)
  func = ftrace_global_list->func;
 else
  func = ftrace_global_list_func;

 if (!list_empty(&ftrace_pids)) {
  set_ftrace_pid_function(func);
  func = ftrace_pid_func;
 }

 global_ops.func = func;
}
