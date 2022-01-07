
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int spinlock; } ;
struct dlm_ctxt {int dlm_thread_wq; int spinlock; } ;


 int __dlm_dirty_lockres (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int mlog_entry (char*,struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void dlm_kick_thread(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
 mlog_entry("dlm=%p, res=%p\n", dlm, res);
 if (res) {
  spin_lock(&dlm->spinlock);
  spin_lock(&res->spinlock);
  __dlm_dirty_lockres(dlm, res);
  spin_unlock(&res->spinlock);
  spin_unlock(&dlm->spinlock);
 }
 wake_up(&dlm->dlm_thread_wq);
}
