
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dlm_migratable_lockres {int dummy; } ;
struct dlm_master_list_entry {int woken; int wq; } ;
struct TYPE_2__ {unsigned int len; int name; } ;
struct dlm_lock_resource {scalar_t__ owner; int wq; int spinlock; int state; TYPE_1__ lockname; } ;
struct dlm_ctxt {int name; int spinlock; int master_lock; int dlm_worker; int node_num; int domain_map; } ;


 int DLM_LOCK_RES_MIGRATING ;
 int DLM_MRES_MIGRATION ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int ML_ERROR ;
 scalar_t__ O2NM_MAX_NODES ;
 scalar_t__ __get_free_page (int ) ;
 int atomic_read (int *) ;
 int dlm_add_migration_mle (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_master_list_entry*,struct dlm_master_list_entry**,char const*,unsigned int,scalar_t__,int ) ;
 int dlm_get_mle_inuse (struct dlm_master_list_entry*) ;
 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_is_lockres_migrateable (struct dlm_ctxt*,struct dlm_lock_resource*,int*) ;
 scalar_t__ dlm_is_node_dead (struct dlm_ctxt*,scalar_t__) ;
 int dlm_kick_thread (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_calc_usage (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 scalar_t__ dlm_mark_lockres_migrating (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ;
 int dlm_mle_cache ;
 int dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 scalar_t__ dlm_pick_migration_target (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlm_put_mle (struct dlm_master_list_entry*) ;
 int dlm_put_mle_inuse (struct dlm_master_list_entry*) ;
 int dlm_remove_nonlocal_locks (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_send_one_lockres (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_migratable_lockres*,scalar_t__,int ) ;
 int dlm_set_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ;
 int flush_workqueue (int ) ;
 int free_page (unsigned long) ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct dlm_master_list_entry*) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int msecs_to_jiffies (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (scalar_t__,int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int dlm_migrate_lockres(struct dlm_ctxt *dlm,
          struct dlm_lock_resource *res,
          u8 target)
{
 struct dlm_master_list_entry *mle = ((void*)0);
 struct dlm_master_list_entry *oldmle = ((void*)0);
  struct dlm_migratable_lockres *mres = ((void*)0);
 int ret = 0;
 const char *name;
 unsigned int namelen;
 int mle_added = 0;
 int numlocks;
 int wake = 0;

 if (!dlm_grab(dlm))
  return -EINVAL;

 name = res->lockname.name;
 namelen = res->lockname.len;

 mlog(0, "migrating %.*s to %u\n", namelen, name, target);




 spin_lock(&res->spinlock);
 ret = dlm_is_lockres_migrateable(dlm, res, &numlocks);
 if (ret < 0) {
  spin_unlock(&res->spinlock);
  goto leave;
 }
 spin_unlock(&res->spinlock);


 if (numlocks == 0) {
  mlog(0, "no locks were found on this lockres! done!\n");
  goto leave;
 }






 ret = -ENOMEM;
 mres = (struct dlm_migratable_lockres *) __get_free_page(GFP_NOFS);
 if (!mres) {
  mlog_errno(ret);
  goto leave;
 }

 mle = (struct dlm_master_list_entry *) kmem_cache_alloc(dlm_mle_cache,
        GFP_NOFS);
 if (!mle) {
  mlog_errno(ret);
  goto leave;
 }
 ret = 0;





 mlog(0, "picking a migration node\n");
 spin_lock(&dlm->spinlock);

 if (!test_bit(target, dlm->domain_map) ||
     target >= O2NM_MAX_NODES) {
  target = dlm_pick_migration_target(dlm, res);
 }
 mlog(0, "node %u chosen for migration\n", target);

 if (target >= O2NM_MAX_NODES ||
     !test_bit(target, dlm->domain_map)) {

  ret = -EINVAL;
 }

 if (ret) {
  spin_unlock(&dlm->spinlock);
  goto fail;
 }

 mlog(0, "continuing with target = %u\n", target);





 spin_lock(&dlm->master_lock);
 ret = dlm_add_migration_mle(dlm, res, mle, &oldmle, name,
        namelen, target, dlm->node_num);
 spin_unlock(&dlm->master_lock);
 spin_unlock(&dlm->spinlock);

 if (ret == -EEXIST) {
  mlog(0, "another process is already migrating it\n");
  goto fail;
 }
 mle_added = 1;





 if (dlm_mark_lockres_migrating(dlm, res, target) < 0) {
  mlog(ML_ERROR, "tried to migrate %.*s to %u, but "
       "the target went down.\n", res->lockname.len,
       res->lockname.name, target);
  spin_lock(&res->spinlock);
  res->state &= ~DLM_LOCK_RES_MIGRATING;
  wake = 1;
  spin_unlock(&res->spinlock);
  ret = -EINVAL;
 }

fail:
 if (oldmle) {

  dlm_mle_detach_hb_events(dlm, oldmle);
  dlm_put_mle(oldmle);
 }

 if (ret < 0) {
  if (mle_added) {
   dlm_mle_detach_hb_events(dlm, mle);
   dlm_put_mle(mle);
  } else if (mle) {
   kmem_cache_free(dlm_mle_cache, mle);
  }
  goto leave;
 }
 flush_workqueue(dlm->dlm_worker);






 spin_lock(&dlm->spinlock);
 spin_lock(&dlm->master_lock);
 dlm_get_mle_inuse(mle);
 spin_unlock(&dlm->master_lock);
 spin_unlock(&dlm->spinlock);





 ret = dlm_send_one_lockres(dlm, res, mres, target,
       DLM_MRES_MIGRATION);

 if (ret < 0) {
  mlog(0, "migration to node %u failed with %d\n",
       target, ret);

  dlm_mle_detach_hb_events(dlm, mle);
  dlm_put_mle(mle);
  dlm_put_mle_inuse(mle);
  spin_lock(&res->spinlock);
  res->state &= ~DLM_LOCK_RES_MIGRATING;
  wake = 1;
  spin_unlock(&res->spinlock);
  goto leave;
 }
 while (1) {
  ret = wait_event_interruptible_timeout(mle->wq,
     (atomic_read(&mle->woken) == 1),
     msecs_to_jiffies(5000));

  if (ret >= 0) {
          if (atomic_read(&mle->woken) == 1 ||
       res->owner == target)
    break;

   mlog(0, "%s:%.*s: timed out during migration\n",
        dlm->name, res->lockname.len, res->lockname.name);


   if (dlm_is_node_dead(dlm, target)) {
    mlog(0, "%s:%.*s: expected migration "
         "target %u is no longer up, restarting\n",
         dlm->name, res->lockname.len,
         res->lockname.name, target);
    ret = -EINVAL;

    dlm_mle_detach_hb_events(dlm, mle);
    dlm_put_mle(mle);
    dlm_put_mle_inuse(mle);
    spin_lock(&res->spinlock);
    res->state &= ~DLM_LOCK_RES_MIGRATING;
    wake = 1;
    spin_unlock(&res->spinlock);
    goto leave;
   }
  } else
   mlog(0, "%s:%.*s: caught signal during migration\n",
        dlm->name, res->lockname.len, res->lockname.name);
 }


 spin_lock(&res->spinlock);
 dlm_set_lockres_owner(dlm, res, target);
 res->state &= ~DLM_LOCK_RES_MIGRATING;
 dlm_remove_nonlocal_locks(dlm, res);
 spin_unlock(&res->spinlock);
 wake_up(&res->wq);


 dlm_mle_detach_hb_events(dlm, mle);
 dlm_put_mle_inuse(mle);
 ret = 0;

 dlm_lockres_calc_usage(dlm, res);

leave:

 if (ret < 0)
  dlm_kick_thread(dlm, res);



 if (wake)
  wake_up(&res->wq);


 if (mres)
  free_page((unsigned long)mres);

 dlm_put(dlm);

 mlog(0, "returning %d\n", ret);
 return ret;
}
