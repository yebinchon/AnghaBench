
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_master_requery {int namelen; int name; } ;
struct dlm_lock_resource {int owner; int spinlock; } ;
struct dlm_ctxt {int node_num; int spinlock; } ;


 int BUG () ;
 int DLM_ASSERT_MASTER_REQUERY ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int ENOMEM ;
 struct dlm_lock_resource* __dlm_lookup_lockres (struct dlm_ctxt*,int ,int ,unsigned int) ;
 int dlm_dispatch_assert_master (struct dlm_ctxt*,struct dlm_lock_resource*,int ,int ,int ) ;
 int dlm_grab (struct dlm_ctxt*) ;
 unsigned int dlm_lockid_hash (int ,int ) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int mlog_errno (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_master_requery_handler(struct o2net_msg *msg, u32 len, void *data,
          void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 struct dlm_master_requery *req = (struct dlm_master_requery *)msg->buf;
 struct dlm_lock_resource *res = ((void*)0);
 unsigned int hash;
 int master = DLM_LOCK_RES_OWNER_UNKNOWN;
 u32 flags = DLM_ASSERT_MASTER_REQUERY;

 if (!dlm_grab(dlm)) {


  return master;
 }

 hash = dlm_lockid_hash(req->name, req->namelen);

 spin_lock(&dlm->spinlock);
 res = __dlm_lookup_lockres(dlm, req->name, req->namelen, hash);
 if (res) {
  spin_lock(&res->spinlock);
  master = res->owner;
  if (master == dlm->node_num) {
   int ret = dlm_dispatch_assert_master(dlm, res,
            0, 0, flags);
   if (ret < 0) {
    mlog_errno(-ENOMEM);

    BUG();
   }
  } else
   dlm_lockres_put(res);
  spin_unlock(&res->spinlock);
 }
 spin_unlock(&dlm->spinlock);

 dlm_put(dlm);
 return master;
}
