
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dlm_master_request {scalar_t__ namelen; int name; int node_idx; } ;
struct dlm_master_list_entry {scalar_t__ type; int master; int spinlock; int maybe_map; int response_map; int mname; scalar_t__ mnamelen; struct dlm_ctxt* dlm; } ;
struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int name; int key; int node_num; } ;
typedef int request ;


 int BUG () ;
 int BUG_ON (int) ;
 int DLM_MASTER_REQUEST_MSG ;




 scalar_t__ DLM_MLE_MIGRATION ;
 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int ML_ERROR ;
 int dlm_is_host_down (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct dlm_master_request*,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int msleep (int) ;
 int o2net_send_message (int ,int ,struct dlm_master_request*,int,int,int*) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_do_master_request(struct dlm_lock_resource *res,
     struct dlm_master_list_entry *mle, int to)
{
 struct dlm_ctxt *dlm = mle->dlm;
 struct dlm_master_request request;
 int ret, response=0, resend;

 memset(&request, 0, sizeof(request));
 request.node_idx = dlm->node_num;

 BUG_ON(mle->type == DLM_MLE_MIGRATION);

 request.namelen = (u8)mle->mnamelen;
 memcpy(request.name, mle->mname, request.namelen);

again:
 ret = o2net_send_message(DLM_MASTER_REQUEST_MSG, dlm->key, &request,
     sizeof(request), to, &response);
 if (ret < 0) {
  if (ret == -ESRCH) {

   mlog(ML_ERROR, "TCP stack not ready!\n");
   BUG();
  } else if (ret == -EINVAL) {
   mlog(ML_ERROR, "bad args passed to o2net!\n");
   BUG();
  } else if (ret == -ENOMEM) {
   mlog(ML_ERROR, "out of memory while trying to send "
        "network message!  retrying\n");

   msleep(50);
   goto again;
  } else if (!dlm_is_host_down(ret)) {

   mlog_errno(ret);
   mlog(ML_ERROR, "unhandled error!");
   BUG();
  }


  mlog(ML_ERROR, "link to %d went down!\n", to);
  goto out;
 }

 ret = 0;
 resend = 0;
 spin_lock(&mle->spinlock);
 switch (response) {
  case 128:
   set_bit(to, mle->response_map);
   mlog(0, "node %u is the master, response=YES\n", to);
   mlog(0, "%s:%.*s: master node %u now knows I have a "
        "reference\n", dlm->name, res->lockname.len,
        res->lockname.name, to);
   mle->master = to;
   break;
  case 129:
   mlog(0, "node %u not master, response=NO\n", to);
   set_bit(to, mle->response_map);
   break;
  case 130:
   mlog(0, "node %u not master, response=MAYBE\n", to);
   set_bit(to, mle->response_map);
   set_bit(to, mle->maybe_map);
   break;
  case 131:
   mlog(0, "node %u hit an error, resending\n", to);
   resend = 1;
   response = 0;
   break;
  default:
   mlog(ML_ERROR, "bad response! %u\n", response);
   BUG();
 }
 spin_unlock(&mle->spinlock);
 if (resend) {

  msleep(50);
  goto again;
 }

out:
 return ret;
}
