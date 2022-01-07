
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int stack; int dirties; } ;


 int account_kernel_stack (int ,int) ;
 int free_task_struct (struct task_struct*) ;
 int free_thread_info (int ) ;
 int ftrace_graph_exit_task (struct task_struct*) ;
 int prop_local_destroy_single (int *) ;
 int rt_mutex_debug_task_free (struct task_struct*) ;
 int tracehook_free_task (struct task_struct*) ;

void free_task(struct task_struct *tsk)
{
 prop_local_destroy_single(&tsk->dirties);
 account_kernel_stack(tsk->stack, -1);
 free_thread_info(tsk->stack);
 rt_mutex_debug_task_free(tsk);
 ftrace_graph_exit_task(tsk);
 tracehook_free_task(tsk);
 free_task_struct(tsk);
}
