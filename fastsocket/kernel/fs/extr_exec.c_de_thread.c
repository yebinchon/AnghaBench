
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ exit_state; struct sighand_struct* sighand; int exit_signal; struct task_struct* group_leader; int tasks; int pid; int start_time; struct signal_struct* signal; } ;
struct signal_struct {int notify_count; int maxrss; struct task_struct* group_exit_task; int count; } ;
struct sighand_struct {int siglock; int action; int count; } ;
typedef int spinlock_t ;
struct TYPE_2__ {scalar_t__ mm; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 scalar_t__ EXIT_DEAD ;
 scalar_t__ EXIT_ZOMBIE ;
 int GFP_KERNEL ;
 int PIDTYPE_PGID ;
 int PIDTYPE_PID ;
 int PIDTYPE_SID ;
 int SIGCHLD ;
 int TASK_UNINTERRUPTIBLE ;
 int __cleanup_sighand (struct sighand_struct*) ;
 int __set_current_state (int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int attach_pid (struct task_struct*,int ,int ) ;
 TYPE_1__* current ;
 int detach_pid (struct task_struct*,int ) ;
 int exit_itimers (struct signal_struct*) ;
 int flush_itimer_signals () ;
 int has_group_leader_pid (struct task_struct*) ;
 struct sighand_struct* kmem_cache_alloc (int ,int ) ;
 scalar_t__ likely (scalar_t__) ;
 int list_replace_rcu (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int rcu_assign_pointer (struct sighand_struct*,struct sighand_struct*) ;
 int release_task (struct task_struct*) ;
 int same_thread_group (struct task_struct*,struct task_struct*) ;
 int schedule () ;
 int setmax_mm_hiwater_rss (int *,scalar_t__) ;
 int sighand_cachep ;
 scalar_t__ signal_group_exit (struct signal_struct*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 scalar_t__ thread_group_leader (struct task_struct*) ;
 int transfer_pid (struct task_struct*,struct task_struct*,int ) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zap_other_threads (struct task_struct*) ;

__attribute__((used)) static int de_thread(struct task_struct *tsk)
{
 struct signal_struct *sig = tsk->signal;
 struct sighand_struct *oldsighand = tsk->sighand;
 spinlock_t *lock = &oldsighand->siglock;
 int count;

 if (thread_group_empty(tsk))
  goto no_thread_group;




 spin_lock_irq(lock);
 if (signal_group_exit(sig)) {




  spin_unlock_irq(lock);
  return -EAGAIN;
 }
 sig->group_exit_task = tsk;
 zap_other_threads(tsk);


 count = thread_group_leader(tsk) ? 1 : 2;
 sig->notify_count = count;
 while (atomic_read(&sig->count) > count) {
  __set_current_state(TASK_UNINTERRUPTIBLE);
  spin_unlock_irq(lock);
  schedule();
  spin_lock_irq(lock);
 }
 spin_unlock_irq(lock);






 if (!thread_group_leader(tsk)) {
  struct task_struct *leader = tsk->group_leader;

  sig->notify_count = -1;
  for (;;) {
   write_lock_irq(&tasklist_lock);
   if (likely(leader->exit_state))
    break;
   __set_current_state(TASK_UNINTERRUPTIBLE);
   write_unlock_irq(&tasklist_lock);
   schedule();
  }
  tsk->start_time = leader->start_time;

  BUG_ON(!same_thread_group(leader, tsk));
  BUG_ON(has_group_leader_pid(tsk));
  detach_pid(tsk, PIDTYPE_PID);
  tsk->pid = leader->pid;
  attach_pid(tsk, PIDTYPE_PID, task_pid(leader));
  transfer_pid(leader, tsk, PIDTYPE_PGID);
  transfer_pid(leader, tsk, PIDTYPE_SID);
  list_replace_rcu(&leader->tasks, &tsk->tasks);

  tsk->group_leader = tsk;
  leader->group_leader = tsk;

  tsk->exit_signal = SIGCHLD;

  BUG_ON(leader->exit_state != EXIT_ZOMBIE);
  leader->exit_state = EXIT_DEAD;
  write_unlock_irq(&tasklist_lock);

  release_task(leader);
 }

 sig->group_exit_task = ((void*)0);
 sig->notify_count = 0;

no_thread_group:
 if (current->mm)
  setmax_mm_hiwater_rss(&sig->maxrss, current->mm);

 exit_itimers(sig);
 flush_itimer_signals();

 if (atomic_read(&oldsighand->count) != 1) {
  struct sighand_struct *newsighand;




  newsighand = kmem_cache_alloc(sighand_cachep, GFP_KERNEL);
  if (!newsighand)
   return -ENOMEM;

  atomic_set(&newsighand->count, 1);
  memcpy(newsighand->action, oldsighand->action,
         sizeof(newsighand->action));

  write_lock_irq(&tasklist_lock);
  spin_lock(&oldsighand->siglock);
  rcu_assign_pointer(tsk->sighand, newsighand);
  spin_unlock(&oldsighand->siglock);
  write_unlock_irq(&tasklist_lock);

  __cleanup_sighand(oldsighand);
 }

 BUG_ON(!thread_group_leader(tsk));
 return 0;
}
