
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int usage; } ;
struct TYPE_15__ {TYPE_2__* signal; } ;
struct TYPE_14__ {int children; } ;
struct TYPE_13__ {TYPE_1__* signal; int exit_signal; TYPE_6__* real_parent; int sibling; TYPE_6__* parent; } ;
struct TYPE_12__ {int rlim; } ;
struct TYPE_11__ {int rlim; } ;


 int SIGCHLD ;
 int atomic_inc (int *) ;
 int commit_creds (TYPE_8__*) ;
 TYPE_3__* current ;
 TYPE_8__ init_cred ;
 TYPE_7__ init_task ;
 TYPE_6__* kthreadd_task ;
 int list_move_tail (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int ptrace_unlink (TYPE_3__*) ;
 int set_user_nice (TYPE_3__*,int ) ;
 scalar_t__ task_nice (TYPE_3__*) ;
 int tasklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void reparent_to_kthreadd(void)
{
 write_lock_irq(&tasklist_lock);

 ptrace_unlink(current);

 current->real_parent = current->parent = kthreadd_task;
 list_move_tail(&current->sibling, &current->real_parent->children);


 current->exit_signal = SIGCHLD;

 if (task_nice(current) < 0)
  set_user_nice(current, 0);



 memcpy(current->signal->rlim, init_task.signal->rlim,
        sizeof(current->signal->rlim));

 atomic_inc(&init_cred.usage);
 commit_creds(&init_cred);
 write_unlock_irq(&tasklist_lock);
}
