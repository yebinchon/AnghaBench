
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {scalar_t__ owner; int state; int dirty; int spinlock; } ;
struct dlm_ctxt {scalar_t__ node_num; int dirty_list; int spinlock; } ;


 int DLM_LOCK_RES_BLOCK_DIRTY ;
 int DLM_LOCK_RES_DIRTY ;
 int DLM_LOCK_RES_MIGRATING ;
 int assert_spin_locked (int *) ;
 int dlm_lockres_get (struct dlm_lock_resource*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mlog_entry (char*,struct dlm_ctxt*,struct dlm_lock_resource*) ;

void __dlm_dirty_lockres(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
 mlog_entry("dlm=%p, res=%p\n", dlm, res);

 assert_spin_locked(&dlm->spinlock);
 assert_spin_locked(&res->spinlock);


 if ((res->owner == dlm->node_num)) {
  if (res->state & (DLM_LOCK_RES_MIGRATING |
      DLM_LOCK_RES_BLOCK_DIRTY))
      return;

  if (list_empty(&res->dirty)) {

   dlm_lockres_get(res);
   list_add_tail(&res->dirty, &dlm->dirty_list);
   res->state |= DLM_LOCK_RES_DIRTY;
  }
 }
}
