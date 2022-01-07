
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int unlock ;
typedef scalar_t__ u8 ;
struct kvec {int iov_len; struct dlm_unlock_lock* iov_base; } ;
struct dlm_unlock_lock {int namelen; int name; int cookie; int flags; scalar_t__ node_idx; } ;
struct dlm_lockstatus {int dummy; } ;
struct TYPE_5__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_4__ {int cookie; } ;
struct dlm_lock {TYPE_3__* lksb; TYPE_1__ ml; } ;
struct dlm_ctxt {int key; scalar_t__ node_num; int name; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_6__ {struct dlm_unlock_lock* lvb; } ;


 int DLM_FORWARD ;
 int DLM_LVB_LEN ;
 int DLM_NORMAL ;
 int DLM_UNLOCK_LOCK_MSG ;
 int LKM_PUT_LVB ;
 int cpu_to_be32 (int) ;
 int dlm_err_to_dlm_status (int) ;
 scalar_t__ dlm_is_host_down (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_unlock_lock*,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,int ,int ) ;
 int mlog_errno (int) ;
 int o2net_send_message_vec (int ,int ,struct kvec*,size_t,scalar_t__,int*) ;

__attribute__((used)) static enum dlm_status dlm_send_remote_unlock_request(struct dlm_ctxt *dlm,
       struct dlm_lock_resource *res,
       struct dlm_lock *lock,
       struct dlm_lockstatus *lksb,
       int flags,
       u8 owner)
{
 struct dlm_unlock_lock unlock;
 int tmpret;
 enum dlm_status ret;
 int status = 0;
 struct kvec vec[2];
 size_t veclen = 1;

 mlog_entry("%.*s\n", res->lockname.len, res->lockname.name);

 if (owner == dlm->node_num) {



  mlog(0, "%s:%.*s: this node became the master due to a "
       "migration, re-evaluate now\n", dlm->name,
       res->lockname.len, res->lockname.name);
  return DLM_FORWARD;
 }

 memset(&unlock, 0, sizeof(unlock));
 unlock.node_idx = dlm->node_num;
 unlock.flags = cpu_to_be32(flags);
 unlock.cookie = lock->ml.cookie;
 unlock.namelen = res->lockname.len;
 memcpy(unlock.name, res->lockname.name, unlock.namelen);

 vec[0].iov_len = sizeof(struct dlm_unlock_lock);
 vec[0].iov_base = &unlock;

 if (flags & LKM_PUT_LVB) {

  vec[1].iov_len = DLM_LVB_LEN;
  vec[1].iov_base = lock->lksb->lvb;
  veclen++;
 }

 tmpret = o2net_send_message_vec(DLM_UNLOCK_LOCK_MSG, dlm->key,
     vec, veclen, owner, &status);
 if (tmpret >= 0) {

  if (status == DLM_FORWARD)
   mlog(0, "master was in-progress.  retry\n");
  ret = status;
 } else {
  mlog_errno(tmpret);
  if (dlm_is_host_down(tmpret)) {







   ret = DLM_NORMAL;
  } else {

   ret = dlm_err_to_dlm_status(tmpret);
  }
 }

 return ret;
}
