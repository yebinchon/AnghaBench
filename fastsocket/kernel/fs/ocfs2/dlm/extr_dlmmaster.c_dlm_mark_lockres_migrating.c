
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* u8 ;
struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int migration_pending; int state; int spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {int spinlock; int domain_map; int migration_wq; int ast_wq; int node_num; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_BLOCK_DIRTY ;
 int DLM_LOCK_RES_DIRTY ;
 int DLM_LOCK_RES_MIGRATING ;
 int EHOSTDOWN ;
 int ML_ERROR ;
 int __dlm_lockres_reserve_ast (struct dlm_lock_resource*) ;
 int dlm_kick_thread (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_is_dirty (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_lockres_release_ast (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int dlm_migration_can_proceed (struct dlm_ctxt*,struct dlm_lock_resource*,char*) ;
 int mlog (int ,char*,...) ;
 int msecs_to_jiffies (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (char*,int ) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

__attribute__((used)) static int dlm_mark_lockres_migrating(struct dlm_ctxt *dlm,
           struct dlm_lock_resource *res,
           u8 target)
{
 int ret = 0;

 mlog(0, "dlm_mark_lockres_migrating: %.*s, from %u to %u\n",
        res->lockname.len, res->lockname.name, dlm->node_num,
        target);


 spin_lock(&res->spinlock);
 BUG_ON(res->migration_pending);
 res->migration_pending = 1;


 __dlm_lockres_reserve_ast(res);
 spin_unlock(&res->spinlock);


 dlm_kick_thread(dlm, res);


 spin_lock(&res->spinlock);
 BUG_ON(res->state & DLM_LOCK_RES_BLOCK_DIRTY);
 res->state |= DLM_LOCK_RES_BLOCK_DIRTY;
 spin_unlock(&res->spinlock);

 wait_event(dlm->ast_wq, !dlm_lockres_is_dirty(dlm, res));
 dlm_lockres_release_ast(dlm, res);

 mlog(0, "about to wait on migration_wq, dirty=%s\n",
        res->state & DLM_LOCK_RES_DIRTY ? "yes" : "no");



again:
 ret = wait_event_interruptible_timeout(dlm->migration_wq,
     dlm_migration_can_proceed(dlm, res, target),
     msecs_to_jiffies(1000));
 if (ret < 0) {
  mlog(0, "woken again: migrating? %s, dead? %s\n",
         res->state & DLM_LOCK_RES_MIGRATING ? "yes":"no",
         test_bit(target, dlm->domain_map) ? "no":"yes");
 } else {
  mlog(0, "all is well: migrating? %s, dead? %s\n",
         res->state & DLM_LOCK_RES_MIGRATING ? "yes":"no",
         test_bit(target, dlm->domain_map) ? "no":"yes");
 }
 if (!dlm_migration_can_proceed(dlm, res, target)) {
  mlog(0, "trying again...\n");
  goto again;
 }


 spin_lock(&res->spinlock);
 BUG_ON(!(res->state & DLM_LOCK_RES_BLOCK_DIRTY));
 BUG_ON(!(res->state & DLM_LOCK_RES_MIGRATING));
 res->state &= ~DLM_LOCK_RES_BLOCK_DIRTY;
 spin_unlock(&res->spinlock);


 spin_lock(&dlm->spinlock);
 if (!test_bit(target, dlm->domain_map)) {
  mlog(ML_ERROR, "aha. migration target %u just went down\n",
       target);
  ret = -EHOSTDOWN;
 }
 spin_unlock(&dlm->spinlock);
 return ret;
}
