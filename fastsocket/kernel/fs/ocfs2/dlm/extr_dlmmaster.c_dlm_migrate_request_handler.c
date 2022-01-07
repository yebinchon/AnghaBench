
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_migrate_request {char* name; unsigned int namelen; int master; int new_master; } ;
struct dlm_master_list_entry {int dummy; } ;
struct dlm_lock_resource {int state; int spinlock; } ;
struct dlm_ctxt {int spinlock; int master_lock; } ;


 int DLM_LOCK_RES_MIGRATING ;
 int DLM_LOCK_RES_RECOVERING ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int ML_ERROR ;
 struct dlm_lock_resource* __dlm_lookup_lockres (struct dlm_ctxt*,char const*,unsigned int,unsigned int) ;
 int dlm_add_migration_mle (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_master_list_entry*,struct dlm_master_list_entry**,char const*,unsigned int,int ,int ) ;
 int dlm_grab (struct dlm_ctxt*) ;
 unsigned int dlm_lockid_hash (char const*,unsigned int) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int dlm_mle_cache ;
 int dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlm_put_mle (struct dlm_master_list_entry*) ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct dlm_master_list_entry*) ;
 int mlog (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_migrate_request_handler(struct o2net_msg *msg, u32 len, void *data,
    void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 struct dlm_lock_resource *res = ((void*)0);
 struct dlm_migrate_request *migrate = (struct dlm_migrate_request *) msg->buf;
 struct dlm_master_list_entry *mle = ((void*)0), *oldmle = ((void*)0);
 const char *name;
 unsigned int namelen, hash;
 int ret = 0;

 if (!dlm_grab(dlm))
  return -EINVAL;

 name = migrate->name;
 namelen = migrate->namelen;
 hash = dlm_lockid_hash(name, namelen);


 mle = (struct dlm_master_list_entry *) kmem_cache_alloc(dlm_mle_cache,
        GFP_NOFS);

 if (!mle) {
  ret = -ENOMEM;
  goto leave;
 }


 spin_lock(&dlm->spinlock);
 res = __dlm_lookup_lockres(dlm, name, namelen, hash);
 spin_lock(&dlm->master_lock);

 if (res) {
  spin_lock(&res->spinlock);
  if (res->state & DLM_LOCK_RES_RECOVERING) {



   spin_unlock(&res->spinlock);
   mlog(ML_ERROR, "Got a migrate request, but the "
        "lockres is marked as recovering!");
   kmem_cache_free(dlm_mle_cache, mle);
   ret = -EINVAL;
   goto unlock;
  }
  res->state |= DLM_LOCK_RES_MIGRATING;
  spin_unlock(&res->spinlock);
 }


 ret = dlm_add_migration_mle(dlm, res, mle, &oldmle,
        name, namelen,
        migrate->new_master,
        migrate->master);

unlock:
 spin_unlock(&dlm->master_lock);
 spin_unlock(&dlm->spinlock);

 if (oldmle) {

  dlm_mle_detach_hb_events(dlm, oldmle);
  dlm_put_mle(oldmle);
 }

 if (res)
  dlm_lockres_put(res);
leave:
 dlm_put(dlm);
 return ret;
}
