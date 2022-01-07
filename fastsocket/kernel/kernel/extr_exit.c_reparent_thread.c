
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ exit_state; int sibling; int exit_signal; TYPE_1__* real_parent; scalar_t__ pdeath_signal; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head children; } ;


 scalar_t__ EXIT_DEAD ;
 scalar_t__ EXIT_ZOMBIE ;
 int SEND_SIG_NOINFO ;
 int SIGCHLD ;
 int do_notify_parent (struct task_struct*,int ) ;
 int group_send_sig_info (scalar_t__,int ,struct task_struct*) ;
 int kill_orphaned_pgrp (struct task_struct*,struct task_struct*) ;
 int list_move_tail (int *,struct list_head*) ;
 scalar_t__ same_thread_group (TYPE_1__*,struct task_struct*) ;
 scalar_t__ task_detached (struct task_struct*) ;
 int task_ptrace (struct task_struct*) ;
 scalar_t__ thread_group_empty (struct task_struct*) ;

__attribute__((used)) static void reparent_thread(struct task_struct *father, struct task_struct *p,
    struct list_head *dead)
{
 if (p->pdeath_signal)
  group_send_sig_info(p->pdeath_signal, SEND_SIG_NOINFO, p);

 list_move_tail(&p->sibling, &p->real_parent->children);

 if (task_detached(p))
  return;




 if (same_thread_group(p->real_parent, father))
  return;


 p->exit_signal = SIGCHLD;


 if (!task_ptrace(p) &&
     p->exit_state == EXIT_ZOMBIE && thread_group_empty(p)) {
  do_notify_parent(p, p->exit_signal);
  if (task_detached(p)) {
   p->exit_state = EXIT_DEAD;
   list_move_tail(&p->sibling, dead);
  }
 }

 kill_orphaned_pgrp(p, father);
}
