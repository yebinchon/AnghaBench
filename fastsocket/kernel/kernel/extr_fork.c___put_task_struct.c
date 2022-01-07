
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int usage; int exit_state; } ;


 int WARN_ON (int) ;
 int atomic_read (int *) ;
 struct task_struct* current ;
 int delayacct_tsk_free (struct task_struct*) ;
 int exit_creds (struct task_struct*) ;
 int free_task (struct task_struct*) ;
 int profile_handoff_task (struct task_struct*) ;

void __put_task_struct(struct task_struct *tsk)
{
 WARN_ON(!tsk->exit_state);
 WARN_ON(atomic_read(&tsk->usage));
 WARN_ON(tsk == current);

 exit_creds(tsk);
 delayacct_tsk_free(tsk);

 if (!profile_handoff_task(tsk))
  free_task(tsk);
}
