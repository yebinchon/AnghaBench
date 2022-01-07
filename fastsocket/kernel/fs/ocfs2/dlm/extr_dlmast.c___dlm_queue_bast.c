
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int bast_pending; int spinlock; int bast_list; } ;
struct dlm_ctxt {int pending_basts; int ast_lock; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int dlm_lock_get (struct dlm_lock*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int mlog (int ,char*) ;
 int mlog_entry_void () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __dlm_queue_bast(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
 mlog_entry_void();

 BUG_ON(!dlm);
 BUG_ON(!lock);
 assert_spin_locked(&dlm->ast_lock);

 BUG_ON(!list_empty(&lock->bast_list));
 if (lock->bast_pending)
  mlog(0, "lock has a bast getting flushed right now\n");


 dlm_lock_get(lock);
 spin_lock(&lock->spinlock);
 list_add_tail(&lock->bast_list, &dlm->pending_basts);
 lock->bast_pending = 1;
 spin_unlock(&lock->spinlock);
}
