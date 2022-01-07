
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int wq; int spinlock; int state; } ;


 int DLM_LOCK_RES_SETREF_INPROG ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void dlm_assert_master_post_handler(int status, void *data, void *ret_data)
{
 struct dlm_lock_resource *res = (struct dlm_lock_resource *)ret_data;

 if (ret_data) {
  spin_lock(&res->spinlock);
  res->state &= ~DLM_LOCK_RES_SETREF_INPROG;
  spin_unlock(&res->spinlock);
  wake_up(&res->wq);
  dlm_lockres_put(res);
 }
 return;
}
