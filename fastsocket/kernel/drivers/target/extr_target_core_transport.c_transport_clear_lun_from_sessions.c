
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct se_lun {int lun_shutdown_comp; int unpacked_lun; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 struct task_struct* kthread_run (int ,struct se_lun*,char*,int ) ;
 int pr_err (char*) ;
 int transport_clear_lun_thread ;
 int wait_for_completion (int *) ;

int transport_clear_lun_from_sessions(struct se_lun *lun)
{
 struct task_struct *kt;

 kt = kthread_run(transport_clear_lun_thread, lun,
   "tcm_cl_%u", lun->unpacked_lun);
 if (IS_ERR(kt)) {
  pr_err("Unable to start clear_lun thread\n");
  return PTR_ERR(kt);
 }
 wait_for_completion(&lun->lun_shutdown_comp);

 return 0;
}
