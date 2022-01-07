
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct TYPE_4__ {int refcount; } ;
struct dlm_master_list_entry {scalar_t__ type; int new_master; int master; scalar_t__ inuse; TYPE_2__ mle_refs; int spinlock; int wq; int woken; int response_map; int maybe_map; } ;
struct TYPE_3__ {int name; int len; } ;
struct dlm_lock_resource {int state; int owner; int spinlock; int wq; TYPE_1__ lockname; } ;
struct dlm_ctxt {int node_num; int spinlock; int name; int master_lock; } ;
struct dlm_assert_master {char* name; unsigned int namelen; int node_idx; int flags; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int DLM_ASSERT_MASTER_FINISH_MIGRATION ;
 int DLM_ASSERT_MASTER_MLE_CLEANUP ;
 int DLM_ASSERT_RESPONSE_MASTERY_REF ;
 int DLM_ASSERT_RESPONSE_REASSERT ;
 unsigned int DLM_LOCKID_NAME_MAX ;
 int DLM_LOCK_RES_DIRTY ;
 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_LOCK_RES_MIGRATING ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_LOCK_RES_RECOVERING ;
 int DLM_LOCK_RES_SETREF_INPROG ;
 scalar_t__ DLM_MLE_BLOCK ;
 scalar_t__ DLM_MLE_MIGRATION ;
 int EINVAL ;
 int ML_ERROR ;
 int O2NM_MAX_NODES ;
 struct dlm_lock_resource* __dlm_lookup_lockres (struct dlm_ctxt*,char*,unsigned int,unsigned int) ;
 int __dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int __dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int __dlm_put_mle (struct dlm_master_list_entry*) ;
 int __dlm_unlink_mle (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int be32_to_cpu (int ) ;
 int dlm_change_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,int) ;
 int dlm_find_mle (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ;
 int dlm_grab (struct dlm_ctxt*) ;
 unsigned int dlm_lockid_hash (char*,unsigned int) ;
 int dlm_print_one_mle (struct dlm_master_list_entry*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int find_next_bit (int ,int,int) ;
 int mlog (int ,char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

int dlm_assert_master_handler(struct o2net_msg *msg, u32 len, void *data,
         void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 struct dlm_master_list_entry *mle = ((void*)0);
 struct dlm_assert_master *assert = (struct dlm_assert_master *)msg->buf;
 struct dlm_lock_resource *res = ((void*)0);
 char *name;
 unsigned int namelen, hash;
 u32 flags;
 int master_request = 0, have_lockres_ref = 0;
 int ret = 0;

 if (!dlm_grab(dlm))
  return 0;

 name = assert->name;
 namelen = assert->namelen;
 hash = dlm_lockid_hash(name, namelen);
 flags = be32_to_cpu(assert->flags);

 if (namelen > DLM_LOCKID_NAME_MAX) {
  mlog(ML_ERROR, "Invalid name length!");
  goto done;
 }

 spin_lock(&dlm->spinlock);

 if (flags)
  mlog(0, "assert_master with flags: %u\n", flags);


 spin_lock(&dlm->master_lock);
 if (!dlm_find_mle(dlm, &mle, name, namelen)) {

  mlog(0, "just got an assert_master from %u, but no "
       "MLE for it! (%.*s)\n", assert->node_idx,
       namelen, name);
 } else {
  int bit = find_next_bit (mle->maybe_map, O2NM_MAX_NODES, 0);
  if (bit >= O2NM_MAX_NODES) {


   mlog(0, "no bits set in the maybe_map, but %u "
        "is asserting! (%.*s)\n", assert->node_idx,
        namelen, name);
  } else if (bit != assert->node_idx) {
   if (flags & DLM_ASSERT_MASTER_MLE_CLEANUP) {
    mlog(0, "master %u was found, %u should "
         "back off\n", assert->node_idx, bit);
   } else {




    mlog(0, "%u is the lowest node, "
         "%u is asserting. (%.*s)  %u must "
         "have begun after %u won.\n", bit,
         assert->node_idx, namelen, name, bit,
         assert->node_idx);
   }
  }
  if (mle->type == DLM_MLE_MIGRATION) {
   if (flags & DLM_ASSERT_MASTER_MLE_CLEANUP) {
    mlog(0, "%s:%.*s: got cleanup assert"
         " from %u for migration\n",
         dlm->name, namelen, name,
         assert->node_idx);
   } else if (!(flags & DLM_ASSERT_MASTER_FINISH_MIGRATION)) {
    mlog(0, "%s:%.*s: got unrelated assert"
         " from %u for migration, ignoring\n",
         dlm->name, namelen, name,
         assert->node_idx);
    __dlm_put_mle(mle);
    spin_unlock(&dlm->master_lock);
    spin_unlock(&dlm->spinlock);
    goto done;
   }
  }
 }
 spin_unlock(&dlm->master_lock);



 res = __dlm_lookup_lockres(dlm, name, namelen, hash);
 if (res) {
  spin_lock(&res->spinlock);
  if (res->state & DLM_LOCK_RES_RECOVERING) {
   mlog(ML_ERROR, "%u asserting but %.*s is "
        "RECOVERING!\n", assert->node_idx, namelen, name);
   goto kill;
  }
  if (!mle) {
   if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN &&
       res->owner != assert->node_idx) {
    mlog(ML_ERROR, "DIE! Mastery assert from %u, "
         "but current owner is %u! (%.*s)\n",
         assert->node_idx, res->owner, namelen,
         name);
    __dlm_print_one_lock_resource(res);
    BUG();
   }
  } else if (mle->type != DLM_MLE_MIGRATION) {
   if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {

    if (res->owner == assert->node_idx) {
     mlog(0, "owner %u re-asserting on "
          "lock %.*s\n", assert->node_idx,
          namelen, name);
     goto ok;
    }
    mlog(ML_ERROR, "got assert_master from "
         "node %u, but %u is the owner! "
         "(%.*s)\n", assert->node_idx,
         res->owner, namelen, name);
    goto kill;
   }
   if (!(res->state & DLM_LOCK_RES_IN_PROGRESS)) {
    mlog(ML_ERROR, "got assert from %u, but lock "
         "with no owner should be "
         "in-progress! (%.*s)\n",
         assert->node_idx,
         namelen, name);
    goto kill;
   }
  } else {

   if (assert->node_idx != mle->new_master) {
    mlog(ML_ERROR, "got assert from %u, but "
         "new master is %u, and old master "
         "was %u (%.*s)\n",
         assert->node_idx, mle->new_master,
         mle->master, namelen, name);
    goto kill;
   }

  }
ok:
  spin_unlock(&res->spinlock);
 }
 spin_unlock(&dlm->spinlock);



 if (mle) {
  int extra_ref = 0;
  int nn = -1;
  int rr, err = 0;

  spin_lock(&mle->spinlock);
  if (mle->type == DLM_MLE_BLOCK || mle->type == DLM_MLE_MIGRATION)
   extra_ref = 1;
  else {



   while ((nn = find_next_bit (mle->response_map, O2NM_MAX_NODES,
          nn+1)) < O2NM_MAX_NODES) {
    if (nn != dlm->node_num && nn != assert->node_idx)
     master_request = 1;
   }
  }
  mle->master = assert->node_idx;
  atomic_set(&mle->woken, 1);
  wake_up(&mle->wq);
  spin_unlock(&mle->spinlock);

  if (res) {
   int wake = 0;
   spin_lock(&res->spinlock);
   if (mle->type == DLM_MLE_MIGRATION) {
    mlog(0, "finishing off migration of lockres %.*s, "
          "from %u to %u\n",
            res->lockname.len, res->lockname.name,
            dlm->node_num, mle->new_master);
    res->state &= ~DLM_LOCK_RES_MIGRATING;
    wake = 1;
    dlm_change_lockres_owner(dlm, res, mle->new_master);
    BUG_ON(res->state & DLM_LOCK_RES_DIRTY);
   } else {
    dlm_change_lockres_owner(dlm, res, mle->master);
   }
   spin_unlock(&res->spinlock);
   have_lockres_ref = 1;
   if (wake)
    wake_up(&res->wq);
  }




  spin_lock(&dlm->spinlock);
  spin_lock(&dlm->master_lock);

  rr = atomic_read(&mle->mle_refs.refcount);
  if (mle->inuse > 0) {
   if (extra_ref && rr < 3)
    err = 1;
   else if (!extra_ref && rr < 2)
    err = 1;
  } else {
   if (extra_ref && rr < 2)
    err = 1;
   else if (!extra_ref && rr < 1)
    err = 1;
  }
  if (err) {
   mlog(ML_ERROR, "%s:%.*s: got assert master from %u "
        "that will mess up this node, refs=%d, extra=%d, "
        "inuse=%d\n", dlm->name, namelen, name,
        assert->node_idx, rr, extra_ref, mle->inuse);
   dlm_print_one_mle(mle);
  }
  __dlm_unlink_mle(dlm, mle);
  __dlm_mle_detach_hb_events(dlm, mle);
  __dlm_put_mle(mle);
  if (extra_ref) {




   __dlm_put_mle(mle);
  }
  spin_unlock(&dlm->master_lock);
  spin_unlock(&dlm->spinlock);
 } else if (res) {
  if (res->owner != assert->node_idx) {
   mlog(0, "assert_master from %u, but current "
        "owner is %u (%.*s), no mle\n", assert->node_idx,
        res->owner, namelen, name);
  }
 }

done:
 ret = 0;
 if (res) {
  spin_lock(&res->spinlock);
  res->state |= DLM_LOCK_RES_SETREF_INPROG;
  spin_unlock(&res->spinlock);
  *ret_data = (void *)res;
 }
 dlm_put(dlm);
 if (master_request) {
  mlog(0, "need to tell master to reassert\n");

  ret |= DLM_ASSERT_RESPONSE_REASSERT;
  if (!have_lockres_ref) {
   mlog(ML_ERROR, "strange, got assert from %u, MASTER "
        "mle present here for %s:%.*s, but no lockres!\n",
        assert->node_idx, dlm->name, namelen, name);
  }
 }
 if (have_lockres_ref) {

  ret |= DLM_ASSERT_RESPONSE_MASTERY_REF;
  mlog(0, "%s:%.*s: got assert from %u, need a ref\n",
       dlm->name, namelen, name, assert->node_idx);
 }
 return ret;

kill:

 mlog(ML_ERROR, "Bad message received from another node.  Dumping state "
      "and killing the other node now!  This node is OK and can continue.\n");
 __dlm_print_one_lock_resource(res);
 spin_unlock(&res->spinlock);
 spin_unlock(&dlm->spinlock);
 *ret_data = (void *)res;
 dlm_put(dlm);
 return -EINVAL;
}
