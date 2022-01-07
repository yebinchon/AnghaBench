
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_lockstatus {int flags; } ;
struct dlm_lock_resource {int spinlock; } ;
struct dlm_lock {struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {int name; } ;
struct dlm_create_lock {char* name; unsigned int namelen; int flags; int cookie; int node_idx; int requested_type; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int BUG_ON (int) ;
 int DLM_IVBUFLEN ;
 int DLM_IVLOCKID ;
 int DLM_LKSB_GET_LVB ;
 unsigned int DLM_LOCKID_NAME_MAX ;
 int DLM_NORMAL ;
 int DLM_REJECTED ;
 int DLM_SYSERR ;
 int LKM_GET_LVB ;
 int ML_ERROR ;
 int __dlm_lockres_state_to_status (struct dlm_lock_resource*) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int dlm_domain_fully_joined (struct dlm_ctxt*) ;
 int dlm_error (int) ;
 int dlm_grab (struct dlm_ctxt*) ;
 int dlm_lock_attach_lockres (struct dlm_lock*,struct dlm_lock_resource*) ;
 int dlm_lock_put (struct dlm_lock*) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 struct dlm_lock_resource* dlm_lookup_lockres (struct dlm_ctxt*,char*,unsigned int) ;
 struct dlm_lock* dlm_new_lock (int ,int ,int ,int *) ;
 int dlm_put (struct dlm_ctxt*) ;
 int dlmlock_master (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_create_lock_handler(struct o2net_msg *msg, u32 len, void *data,
       void **ret_data)
{
 struct dlm_ctxt *dlm = data;
 struct dlm_create_lock *create = (struct dlm_create_lock *)msg->buf;
 struct dlm_lock_resource *res = ((void*)0);
 struct dlm_lock *newlock = ((void*)0);
 struct dlm_lockstatus *lksb = ((void*)0);
 enum dlm_status status = DLM_NORMAL;
 char *name;
 unsigned int namelen;

 BUG_ON(!dlm);

 mlog_entry_void();

 if (!dlm_grab(dlm))
  return DLM_REJECTED;

 name = create->name;
 namelen = create->namelen;
 status = DLM_REJECTED;
 if (!dlm_domain_fully_joined(dlm)) {
  mlog(ML_ERROR, "Domain %s not fully joined, but node %u is "
       "sending a create_lock message for lock %.*s!\n",
       dlm->name, create->node_idx, namelen, name);
  dlm_error(status);
  goto leave;
 }

 status = DLM_IVBUFLEN;
 if (namelen > DLM_LOCKID_NAME_MAX) {
  dlm_error(status);
  goto leave;
 }

 status = DLM_SYSERR;
 newlock = dlm_new_lock(create->requested_type,
          create->node_idx,
          be64_to_cpu(create->cookie), ((void*)0));
 if (!newlock) {
  dlm_error(status);
  goto leave;
 }

 lksb = newlock->lksb;

 if (be32_to_cpu(create->flags) & LKM_GET_LVB) {
  lksb->flags |= DLM_LKSB_GET_LVB;
  mlog(0, "set DLM_LKSB_GET_LVB flag\n");
 }

 status = DLM_IVLOCKID;
 res = dlm_lookup_lockres(dlm, name, namelen);
 if (!res) {
  dlm_error(status);
  goto leave;
 }

 spin_lock(&res->spinlock);
 status = __dlm_lockres_state_to_status(res);
 spin_unlock(&res->spinlock);

 if (status != DLM_NORMAL) {
  mlog(0, "lockres recovering/migrating/in-progress\n");
  goto leave;
 }

 dlm_lock_attach_lockres(newlock, res);

 status = dlmlock_master(dlm, res, newlock, be32_to_cpu(create->flags));
leave:
 if (status != DLM_NORMAL)
  if (newlock)
   dlm_lock_put(newlock);

 if (res)
  dlm_lockres_put(res);

 dlm_put(dlm);

 return status;
}
