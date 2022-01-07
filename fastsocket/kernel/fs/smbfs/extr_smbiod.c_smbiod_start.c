
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 scalar_t__ SMBIOD_DEAD ;
 scalar_t__ SMBIOD_RUNNING ;
 scalar_t__ SMBIOD_STARTING ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct task_struct* kthread_run (int ,int *,char*) ;
 int module_put (int ) ;
 int servers_lock ;
 int smbiod ;
 scalar_t__ smbiod_state ;
 struct task_struct* smbiod_thread ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int smbiod_start(void)
{
 struct task_struct *tsk;
 int err = 0;

 if (smbiod_state != SMBIOD_DEAD)
  return 0;
 smbiod_state = SMBIOD_STARTING;
 __module_get(THIS_MODULE);
 spin_unlock(&servers_lock);
 tsk = kthread_run(smbiod, ((void*)0), "smbiod");
 if (IS_ERR(tsk)) {
  err = PTR_ERR(tsk);
  module_put(THIS_MODULE);
 }

 spin_lock(&servers_lock);
 if (err < 0) {
  smbiod_state = SMBIOD_DEAD;
  smbiod_thread = ((void*)0);
 } else {
  smbiod_state = SMBIOD_RUNNING;
  smbiod_thread = tsk;
 }
 return err;
}
