
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dlm_lock_resource* name; struct dlm_lock_resource* len; } ;
struct dlm_lock_resource {int state; scalar_t__ owner; int wq; int spinlock; int purge; TYPE_1__ lockname; } ;
struct dlm_ctxt {scalar_t__ node_num; int purge_count; int spinlock; struct dlm_lock_resource* name; int purge_list; } ;


 int BUG () ;
 int DLM_LOCK_RES_DROPPING_REF ;
 int DLM_LOCK_RES_MIGRATING ;
 int DLM_LOCK_RES_SETREF_INPROG ;
 int __dlm_lockres_unused (struct dlm_lock_resource*) ;
 int __dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int __dlm_unhash_lockres (struct dlm_lock_resource*) ;
 int __dlm_wait_on_lockres_flags (struct dlm_lock_resource*,int ) ;
 int dlm_drop_lockres_ref (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_is_host_down (int) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mlog (int ,char*,struct dlm_lock_resource*,struct dlm_lock_resource*,...) ;
 int mlog_errno (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dlm_purge_lockres(struct dlm_ctxt *dlm,
        struct dlm_lock_resource *res)
{
 int master;
 int ret = 0;

 spin_lock(&res->spinlock);
 if (!__dlm_lockres_unused(res)) {
  mlog(0, "%s:%.*s: tried to purge but not unused\n",
       dlm->name, res->lockname.len, res->lockname.name);
  __dlm_print_one_lock_resource(res);
  spin_unlock(&res->spinlock);
  BUG();
 }

 if (res->state & DLM_LOCK_RES_MIGRATING) {
  mlog(0, "%s:%.*s: Delay dropref as this lockres is "
       "being remastered\n", dlm->name, res->lockname.len,
       res->lockname.name);

  if (!list_empty(&res->purge)) {
   list_del_init(&res->purge);
   list_add_tail(&res->purge, &dlm->purge_list);
  }
  spin_unlock(&res->spinlock);
  return 0;
 }

 master = (res->owner == dlm->node_num);

 if (!master)
  res->state |= DLM_LOCK_RES_DROPPING_REF;
 spin_unlock(&res->spinlock);

 mlog(0, "purging lockres %.*s, master = %d\n", res->lockname.len,
      res->lockname.name, master);

 if (!master) {

  spin_unlock(&dlm->spinlock);

  spin_lock(&res->spinlock);

  __dlm_wait_on_lockres_flags(res, DLM_LOCK_RES_SETREF_INPROG);
  spin_unlock(&res->spinlock);


  ret = dlm_drop_lockres_ref(dlm, res);
  if (ret < 0) {
   mlog_errno(ret);
   if (!dlm_is_host_down(ret))
    BUG();
  }
  mlog(0, "%s:%.*s: dlm_deref_lockres returned %d\n",
       dlm->name, res->lockname.len, res->lockname.name, ret);
  spin_lock(&dlm->spinlock);
 }

 spin_lock(&res->spinlock);
 if (!list_empty(&res->purge)) {
  mlog(0, "removing lockres %.*s:%p from purgelist, "
       "master = %d\n", res->lockname.len, res->lockname.name,
       res, master);
  list_del_init(&res->purge);
  spin_unlock(&res->spinlock);
  dlm_lockres_put(res);
  dlm->purge_count--;
 } else
  spin_unlock(&res->spinlock);

 __dlm_unhash_lockres(res);



 if (!master) {
  spin_lock(&res->spinlock);
  res->state &= ~DLM_LOCK_RES_DROPPING_REF;
  spin_unlock(&res->spinlock);
  wake_up(&res->wq);
 }
 return 0;
}
