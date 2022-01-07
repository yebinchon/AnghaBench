
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sum_exec_runtime; } ;
struct task_struct {int * sighand; struct signal_struct* signal; int pending; TYPE_1__ se; int ioac; scalar_t__ nivcsw; scalar_t__ nvcsw; scalar_t__ maj_flt; scalar_t__ min_flt; int gtime; int stime; int utime; } ;
struct signal_struct {scalar_t__ notify_count; int shared_pending; int sum_sched_runtime; int ioac; int oublock; int inblock; int nivcsw; int nvcsw; int maj_flt; int min_flt; void* gtime; void* stime; void* utime; struct task_struct* curr_target; scalar_t__ group_exit_task; int count; } ;
struct sighand_struct {int siglock; } ;


 int BUG_ON (int) ;
 int TIF_SIGPENDING ;
 int __cleanup_sighand (struct sighand_struct*) ;
 int __cleanup_signal (struct signal_struct*) ;
 int __unhash_process (struct task_struct*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 void* cputime_add (void*,int ) ;
 int flush_sigqueue (int *) ;
 int has_group_leader_pid (struct task_struct*) ;
 struct task_struct* next_thread (struct task_struct*) ;
 int posix_cpu_timers_exit (struct task_struct*) ;
 int posix_cpu_timers_exit_group (struct task_struct*) ;
 struct sighand_struct* rcu_dereference (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_io_accounting_add (int *,int *) ;
 scalar_t__ task_io_get_inblock (struct task_struct*) ;
 scalar_t__ task_io_get_oublock (struct task_struct*) ;
 int task_rq_unlock_wait (struct task_struct*) ;
 int taskstats_tgid_free (struct signal_struct*) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void __exit_signal(struct task_struct *tsk)
{
 struct signal_struct *sig = tsk->signal;
 struct sighand_struct *sighand;

 BUG_ON(!sig);
 BUG_ON(!atomic_read(&sig->count));

 sighand = rcu_dereference(tsk->sighand);
 spin_lock(&sighand->siglock);

 posix_cpu_timers_exit(tsk);
 if (atomic_dec_and_test(&sig->count))
  posix_cpu_timers_exit_group(tsk);
 else {





  if (unlikely(has_group_leader_pid(tsk)))
   posix_cpu_timers_exit_group(tsk);





  if (sig->group_exit_task && atomic_read(&sig->count) == sig->notify_count)
   wake_up_process(sig->group_exit_task);

  if (tsk == sig->curr_target)
   sig->curr_target = next_thread(tsk);
  sig->utime = cputime_add(sig->utime, tsk->utime);
  sig->stime = cputime_add(sig->stime, tsk->stime);
  sig->gtime = cputime_add(sig->gtime, tsk->gtime);
  sig->min_flt += tsk->min_flt;
  sig->maj_flt += tsk->maj_flt;
  sig->nvcsw += tsk->nvcsw;
  sig->nivcsw += tsk->nivcsw;
  sig->inblock += task_io_get_inblock(tsk);
  sig->oublock += task_io_get_oublock(tsk);
  task_io_accounting_add(&sig->ioac, &tsk->ioac);
  sig->sum_sched_runtime += tsk->se.sum_exec_runtime;
  sig = ((void*)0);
 }

 __unhash_process(tsk);





 flush_sigqueue(&tsk->pending);

 tsk->signal = ((void*)0);
 tsk->sighand = ((void*)0);
 spin_unlock(&sighand->siglock);

 __cleanup_sighand(sighand);
 clear_tsk_thread_flag(tsk,TIF_SIGPENDING);
 if (sig) {
  flush_sigqueue(&sig->shared_pending);
  taskstats_tgid_free(sig);




  task_rq_unlock_wait(tsk);
  __cleanup_signal(sig);
 }
}
