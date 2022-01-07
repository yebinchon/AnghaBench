
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {scalar_t__ exit_signal; scalar_t__ parent_exec_id; scalar_t__ self_exec_id; TYPE_2__* signal; int exit_state; TYPE_1__* real_parent; int group_leader; } ;
struct TYPE_4__ {scalar_t__ notify_count; scalar_t__ group_exit_task; } ;
struct TYPE_3__ {scalar_t__ self_exec_id; } ;


 int DEATH_REAP ;
 int EXIT_DEAD ;
 int EXIT_ZOMBIE ;
 scalar_t__ SIGCHLD ;
 int do_notify_parent (struct task_struct*,int) ;
 int exit_task_namespaces (struct task_struct*) ;
 int forget_original_parent (struct task_struct*) ;
 int kill_orphaned_pgrp (int ,int *) ;
 int release_task (struct task_struct*) ;
 int task_detached (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ thread_group_leader (struct task_struct*) ;
 int tracehook_notify_death (struct task_struct*,void**,int) ;
 int tracehook_report_death (struct task_struct*,int,void*,int) ;
 int wake_up_process (scalar_t__) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void exit_notify(struct task_struct *tsk, int group_dead)
{
 int signal;
 void *cookie;
 forget_original_parent(tsk);
 exit_task_namespaces(tsk);

 write_lock_irq(&tasklist_lock);
 if (group_dead)
  kill_orphaned_pgrp(tsk->group_leader, ((void*)0));
 if (tsk->exit_signal != SIGCHLD && !task_detached(tsk) &&
     (tsk->parent_exec_id != tsk->real_parent->self_exec_id ||
      tsk->self_exec_id != tsk->parent_exec_id))
  tsk->exit_signal = SIGCHLD;

 signal = tracehook_notify_death(tsk, &cookie, group_dead);
 if (signal >= 0)
  signal = do_notify_parent(tsk, signal);

 tsk->exit_state = signal == DEATH_REAP ? EXIT_DEAD : EXIT_ZOMBIE;


 if (thread_group_leader(tsk) &&
     tsk->signal->group_exit_task &&
     tsk->signal->notify_count < 0)
  wake_up_process(tsk->signal->group_exit_task);

 write_unlock_irq(&tasklist_lock);

 tracehook_report_death(tsk, signal, cookie, group_dead);


 if (signal == DEATH_REAP)
  release_task(tsk);
}
