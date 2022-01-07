
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int exit_code; int * vfork_done; } ;
struct kthread {int should_stop; int exited; } ;


 int barrier () ;
 int get_task_struct (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 struct kthread* to_kthread (struct task_struct*) ;
 int trace_sched_kthread_stop (struct task_struct*) ;
 int trace_sched_kthread_stop_ret (int) ;
 int wait_for_completion (int *) ;
 int wake_up_process (struct task_struct*) ;

int kthread_stop(struct task_struct *k)
{
 struct kthread *kthread;
 int ret;

 trace_sched_kthread_stop(k);
 get_task_struct(k);

 kthread = to_kthread(k);
 barrier();
 if (k->vfork_done != ((void*)0)) {
  kthread->should_stop = 1;
  wake_up_process(k);
  wait_for_completion(&kthread->exited);
 }
 ret = k->exit_code;

 put_task_struct(k);
 trace_sched_kthread_stop_ret(ret);

 return ret;
}
