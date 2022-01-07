
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_flags; } ;


 int LSFL_WORK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 struct dlm_ls* dlm_find_lockspace_local (void*) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int do_ls_recovery (struct dlm_ls*) ;
 int kthread_should_stop () ;
 int log_print (char*,void*) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int dlm_recoverd(void *arg)
{
 struct dlm_ls *ls;

 ls = dlm_find_lockspace_local(arg);
 if (!ls) {
  log_print("dlm_recoverd: no lockspace %p", arg);
  return -1;
 }

 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!test_bit(LSFL_WORK, &ls->ls_flags))
   schedule();
  set_current_state(TASK_RUNNING);

  if (test_and_clear_bit(LSFL_WORK, &ls->ls_flags))
   do_ls_recovery(ls);
 }

 dlm_put_lockspace(ls);
 return 0;
}
