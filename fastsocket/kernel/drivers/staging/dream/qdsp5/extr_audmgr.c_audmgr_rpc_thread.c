
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rpc_request_hdr {int xid; int procedure; int type; } ;
struct TYPE_3__ {int accept_stat; } ;
struct TYPE_4__ {TYPE_1__ acc_hdr; } ;
struct rpc_reply_hdr {TYPE_2__ data; int reply_stat; } ;
struct audmgr {int wait; int * task; int ept; } ;


 scalar_t__ RPCMSG_REPLYSTAT_ACCEPTED ;
 int RPC_COMMON_HDR_SZ ;
 int RPC_REPLY_HDR_SZ ;
 int RPC_REQUEST_HDR_SZ ;
 scalar_t__ RPC_TYPE_REPLY ;
 scalar_t__ be32_to_cpu (int ) ;
 int kfree (struct rpc_request_hdr*) ;
 int kthread_should_stop () ;
 int msm_rpc_read (int ,void**,int,int) ;
 int pr_err (char*,int) ;
 int pr_info (char*,...) ;
 int process_rpc_request (scalar_t__,scalar_t__,void*,int,void*) ;
 int wake_up (int *) ;

__attribute__((used)) static int audmgr_rpc_thread(void *data)
{
 struct audmgr *am = data;
 struct rpc_request_hdr *hdr = ((void*)0);
 uint32_t type;
 int len;

 pr_info("audmgr_rpc_thread() start\n");

 while (!kthread_should_stop()) {
  if (hdr) {
   kfree(hdr);
   hdr = ((void*)0);
  }
  len = msm_rpc_read(am->ept, (void **) &hdr, -1, -1);
  if (len < 0) {
   pr_err("audmgr: rpc read failed (%d)\n", len);
   break;
  }
  if (len < RPC_COMMON_HDR_SZ)
   continue;

  type = be32_to_cpu(hdr->type);
  if (type == RPC_TYPE_REPLY) {
   struct rpc_reply_hdr *rep = (void *) hdr;
   uint32_t status;
   if (len < RPC_REPLY_HDR_SZ)
    continue;
   status = be32_to_cpu(rep->reply_stat);
   if (status == RPCMSG_REPLYSTAT_ACCEPTED) {
    status = be32_to_cpu(rep->data.acc_hdr.accept_stat);
    pr_info("audmgr: rpc_reply status %d\n", status);
   } else {
    pr_info("audmgr: rpc_reply denied!\n");
   }

   continue;
  }

  if (len < RPC_REQUEST_HDR_SZ)
   continue;

  process_rpc_request(be32_to_cpu(hdr->procedure),
        be32_to_cpu(hdr->xid),
        (void *) (hdr + 1),
        len - sizeof(*hdr),
        data);
 }
 pr_info("audmgr_rpc_thread() exit\n");
 if (hdr) {
  kfree(hdr);
  hdr = ((void*)0);
 }
 am->task = ((void*)0);
 wake_up(&am->wait);
 return 0;
}
