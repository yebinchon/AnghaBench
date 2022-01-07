
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dlm_master_requery {int name; int namelen; int node_idx; } ;
struct TYPE_2__ {int len; int name; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int key; int node_num; } ;
typedef int req ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_MASTER_REQUERY_MSG ;
 int EINVAL ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_master_requery*,int ,int) ;
 int mlog (int ,char*,scalar_t__,scalar_t__) ;
 int mlog_errno (int) ;
 int o2net_send_message (int ,int ,struct dlm_master_requery*,int,scalar_t__,int*) ;

int dlm_do_master_requery(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
     u8 nodenum, u8 *real_master)
{
 int ret = -EINVAL;
 struct dlm_master_requery req;
 int status = DLM_LOCK_RES_OWNER_UNKNOWN;

 memset(&req, 0, sizeof(req));
 req.node_idx = dlm->node_num;
 req.namelen = res->lockname.len;
 memcpy(req.name, res->lockname.name, res->lockname.len);

 ret = o2net_send_message(DLM_MASTER_REQUERY_MSG, dlm->key,
     &req, sizeof(req), nodenum, &status);

 if (ret < 0)
  mlog_errno(ret);
 else {
  BUG_ON(status < 0);
  BUG_ON(status > DLM_LOCK_RES_OWNER_UNKNOWN);
  *real_master = (u8) (status & 0xff);
  mlog(0, "node %u responded to master requery with %u\n",
     nodenum, *real_master);
  ret = 0;
 }
 return ret;
}
