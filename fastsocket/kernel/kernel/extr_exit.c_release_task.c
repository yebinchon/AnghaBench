
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {scalar_t__ exit_state; int rcu; int exit_signal; struct task_struct* group_leader; } ;
struct TYPE_4__ {TYPE_1__* user; } ;
struct TYPE_3__ {int processes; } ;


 int BUG_ON (int) ;
 scalar_t__ EXIT_DEAD ;
 scalar_t__ EXIT_ZOMBIE ;
 int __exit_signal (struct task_struct*) ;
 TYPE_2__* __task_cred (struct task_struct*) ;
 int atomic_dec (int *) ;
 int call_rcu (int *,int ) ;
 int delayed_put_task_struct ;
 int do_notify_parent (struct task_struct*,int ) ;
 int proc_flush_task (struct task_struct*) ;
 int release_thread (struct task_struct*) ;
 int task_detached (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 int tracehook_finish_release_task (struct task_struct*) ;
 int tracehook_prepare_release_task (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

void release_task(struct task_struct * p)
{
 struct task_struct *leader;
 int zap_leader;
repeat:
 tracehook_prepare_release_task(p);


 atomic_dec(&__task_cred(p)->user->processes);

 proc_flush_task(p);

 write_lock_irq(&tasklist_lock);
 tracehook_finish_release_task(p);
 __exit_signal(p);






 zap_leader = 0;
 leader = p->group_leader;
 if (leader != p && thread_group_empty(leader) && leader->exit_state == EXIT_ZOMBIE) {
  BUG_ON(task_detached(leader));
  do_notify_parent(leader, leader->exit_signal);
  zap_leader = task_detached(leader);





  if (zap_leader)
   leader->exit_state = EXIT_DEAD;
 }

 write_unlock_irq(&tasklist_lock);
 release_thread(p);
 call_rcu(&p->rcu, delayed_put_task_struct);

 p = leader;
 if (unlikely(zap_leader))
  goto repeat;
}
