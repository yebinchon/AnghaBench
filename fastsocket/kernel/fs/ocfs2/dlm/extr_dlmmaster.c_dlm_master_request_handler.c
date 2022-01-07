
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_master_request {char* name; unsigned int namelen; int node_idx; } ;
struct dlm_master_list_entry {scalar_t__ type; scalar_t__ master; int spinlock; int maybe_map; int new_master; } ;
struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int state; scalar_t__ owner; TYPE_1__ lockname; int spinlock; } ;
struct dlm_ctxt {scalar_t__ node_num; int spinlock; int master_lock; int name; } ;


 int BUG () ;
 int DLM_ASSERT_MASTER_MLE_CLEANUP ;
 int DLM_IVBUFLEN ;
 unsigned int DLM_LOCKID_NAME_MAX ;
 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_LOCK_RES_MIGRATING ;
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_LOCK_RES_RECOVERING ;
 int DLM_MASTER_RESP_ERROR ;
 int DLM_MASTER_RESP_MAYBE ;
 int DLM_MASTER_RESP_NO ;
 int DLM_MASTER_RESP_YES ;
 scalar_t__ DLM_MLE_BLOCK ;
 scalar_t__ DLM_MLE_MIGRATION ;
 int ENOMEM ;
 int GFP_NOFS ;
 int ML_ERROR ;
 int __dlm_insert_mle (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 struct dlm_lock_resource* __dlm_lookup_lockres (struct dlm_ctxt*,char*,unsigned int,unsigned int) ;
 int dlm_dispatch_assert_master (struct dlm_ctxt*,struct dlm_lock_resource*,int ,int ,int ) ;
 int dlm_domain_fully_joined (struct dlm_ctxt*) ;
 int dlm_find_mle (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ;
 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_init_mle (struct dlm_master_list_entry*,scalar_t__,struct dlm_ctxt*,int *,char*,unsigned int) ;
 unsigned int dlm_lockid_hash (char*,unsigned int) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlm_lockres_set_refmap_bit (int ,struct dlm_lock_resource*) ;
 int dlm_mle_cache ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlm_put_mle (struct dlm_master_list_entry*) ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct dlm_master_list_entry*) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int ) ;
 int set_bit (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_master_request_handler(struct o2net_msg *msg, u32 len, void *data,
          void **ret_data)
{
 u8 response = DLM_MASTER_RESP_MAYBE;
 struct dlm_ctxt *dlm = data;
 struct dlm_lock_resource *res = ((void*)0);
 struct dlm_master_request *request = (struct dlm_master_request *) msg->buf;
 struct dlm_master_list_entry *mle = ((void*)0), *tmpmle = ((void*)0);
 char *name;
 unsigned int namelen, hash;
 int found, ret;
 int set_maybe;
 int dispatch_assert = 0;

 if (!dlm_grab(dlm))
  return DLM_MASTER_RESP_NO;

 if (!dlm_domain_fully_joined(dlm)) {
  response = DLM_MASTER_RESP_NO;
  goto send_response;
 }

 name = request->name;
 namelen = request->namelen;
 hash = dlm_lockid_hash(name, namelen);

 if (namelen > DLM_LOCKID_NAME_MAX) {
  response = DLM_IVBUFLEN;
  goto send_response;
 }

way_up_top:
 spin_lock(&dlm->spinlock);
 res = __dlm_lookup_lockres(dlm, name, namelen, hash);
 if (res) {
  spin_unlock(&dlm->spinlock);


  spin_lock(&res->spinlock);
  if (res->state & (DLM_LOCK_RES_RECOVERING|
      DLM_LOCK_RES_MIGRATING)) {
   spin_unlock(&res->spinlock);
   mlog(0, "returning DLM_MASTER_RESP_ERROR since res is "
        "being recovered/migrated\n");
   response = DLM_MASTER_RESP_ERROR;
   if (mle)
    kmem_cache_free(dlm_mle_cache, mle);
   goto send_response;
  }

  if (res->owner == dlm->node_num) {
   mlog(0, "%s:%.*s: setting bit %u in refmap\n",
        dlm->name, namelen, name, request->node_idx);
   dlm_lockres_set_refmap_bit(request->node_idx, res);
   spin_unlock(&res->spinlock);
   response = DLM_MASTER_RESP_YES;
   if (mle)
    kmem_cache_free(dlm_mle_cache, mle);







   dispatch_assert = 1;
   goto send_response;
  } else if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {
   spin_unlock(&res->spinlock);

   response = DLM_MASTER_RESP_NO;
   if (mle)
    kmem_cache_free(dlm_mle_cache, mle);
   goto send_response;
  }




  if (!(res->state & DLM_LOCK_RES_IN_PROGRESS)) {
   mlog(ML_ERROR, "lock with no owner should be "
        "in-progress!\n");
   BUG();
  }


  spin_lock(&dlm->master_lock);
  found = dlm_find_mle(dlm, &tmpmle, name, namelen);
  if (!found) {
   mlog(ML_ERROR, "no mle found for this lock!\n");
   BUG();
  }
  set_maybe = 1;
  spin_lock(&tmpmle->spinlock);
  if (tmpmle->type == DLM_MLE_BLOCK) {


   response = DLM_MASTER_RESP_NO;
  } else if (tmpmle->type == DLM_MLE_MIGRATION) {
   mlog(0, "node %u is master, but trying to migrate to "
        "node %u.\n", tmpmle->master, tmpmle->new_master);
   if (tmpmle->master == dlm->node_num) {
    mlog(ML_ERROR, "no owner on lockres, but this "
         "node is trying to migrate it to %u?!\n",
         tmpmle->new_master);
    BUG();
   } else {

    response = DLM_MASTER_RESP_NO;
   }
  } else if (tmpmle->master != DLM_LOCK_RES_OWNER_UNKNOWN) {
   set_maybe = 0;
   if (tmpmle->master == dlm->node_num) {
    response = DLM_MASTER_RESP_YES;



    dispatch_assert = 1;
    dlm_lockres_set_refmap_bit(request->node_idx, res);
    mlog(0, "%s:%.*s: setting bit %u in refmap\n",
         dlm->name, namelen, name,
         request->node_idx);
   } else
    response = DLM_MASTER_RESP_NO;
  } else {


   response = DLM_MASTER_RESP_MAYBE;
  }
  if (set_maybe)
   set_bit(request->node_idx, tmpmle->maybe_map);
  spin_unlock(&tmpmle->spinlock);

  spin_unlock(&dlm->master_lock);
  spin_unlock(&res->spinlock);


  dlm_put_mle(tmpmle);
  if (mle)
   kmem_cache_free(dlm_mle_cache, mle);
  goto send_response;
 }







 spin_lock(&dlm->master_lock);
 found = dlm_find_mle(dlm, &tmpmle, name, namelen);
 if (!found) {


  if (!mle) {
   spin_unlock(&dlm->master_lock);
   spin_unlock(&dlm->spinlock);

   mle = (struct dlm_master_list_entry *)
    kmem_cache_alloc(dlm_mle_cache, GFP_NOFS);
   if (!mle) {
    response = DLM_MASTER_RESP_ERROR;
    mlog_errno(-ENOMEM);
    goto send_response;
   }
   goto way_up_top;
  }



  dlm_init_mle(mle, DLM_MLE_BLOCK, dlm, ((void*)0), name, namelen);
  set_bit(request->node_idx, mle->maybe_map);
  __dlm_insert_mle(dlm, mle);
  response = DLM_MASTER_RESP_NO;
 } else {

  set_maybe = 1;
  spin_lock(&tmpmle->spinlock);
  if (tmpmle->master == dlm->node_num) {
   mlog(ML_ERROR, "no lockres, but an mle with this node as master!\n");
   BUG();
  }
  if (tmpmle->type == DLM_MLE_BLOCK)
   response = DLM_MASTER_RESP_NO;
  else if (tmpmle->type == DLM_MLE_MIGRATION) {
   mlog(0, "migration mle was found (%u->%u)\n",
        tmpmle->master, tmpmle->new_master);

   response = DLM_MASTER_RESP_NO;
  } else
   response = DLM_MASTER_RESP_MAYBE;
  if (set_maybe)
   set_bit(request->node_idx, tmpmle->maybe_map);
  spin_unlock(&tmpmle->spinlock);
 }
 spin_unlock(&dlm->master_lock);
 spin_unlock(&dlm->spinlock);

 if (found) {

  dlm_put_mle(tmpmle);
 }
send_response:






 if (dispatch_assert) {
  if (response != DLM_MASTER_RESP_YES)
   mlog(ML_ERROR, "invalid response %d\n", response);
  if (!res) {
   mlog(ML_ERROR, "bad lockres while trying to assert!\n");
   BUG();
  }
  mlog(0, "%u is the owner of %.*s, cleaning everyone else\n",
        dlm->node_num, res->lockname.len, res->lockname.name);
  ret = dlm_dispatch_assert_master(dlm, res, 0, request->node_idx,
       DLM_ASSERT_MASTER_MLE_CLEANUP);
  if (ret < 0) {
   mlog(ML_ERROR, "failed to dispatch assert master work\n");
   response = DLM_MASTER_RESP_ERROR;
   dlm_lockres_put(res);
  }
 } else {
  if (res)
   dlm_lockres_put(res);
 }

 dlm_put(dlm);
 return response;
}
