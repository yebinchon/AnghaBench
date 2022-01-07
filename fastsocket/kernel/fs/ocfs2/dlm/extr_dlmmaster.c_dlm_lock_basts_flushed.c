
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int spinlock; int bast_pending; int bast_list; } ;
struct dlm_ctxt {int ast_lock; } ;


 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_lock_basts_flushed(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
 int ret;
 spin_lock(&dlm->ast_lock);
 spin_lock(&lock->spinlock);
 ret = (list_empty(&lock->bast_list) && !lock->bast_pending);
 spin_unlock(&lock->spinlock);
 spin_unlock(&dlm->ast_lock);
 return ret;
}
