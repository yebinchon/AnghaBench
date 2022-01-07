
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ verf_length; scalar_t__ verf_flavor; void* accept_stat; } ;
struct TYPE_4__ {TYPE_1__ acc_hdr; } ;
struct rpc_reply_hdr {TYPE_2__ data; void* reply_stat; void* type; void* xid; } ;
struct msm_rpc_endpoint {int dummy; } ;
typedef int reply_buf ;


 int RPCMSG_REPLYSTAT_ACCEPTED ;
 void* cpu_to_be32 (int) ;
 int msm_rpc_write (int ,int *,int) ;
 int pr_err (char*,int) ;
 int rpc_cb_server_client ;

__attribute__((used)) static int rpc_send_accepted_void_reply(struct msm_rpc_endpoint *client,
     uint32_t xid, uint32_t accept_status)
{
 int rc = 0;
 uint8_t reply_buf[sizeof(struct rpc_reply_hdr)];
 struct rpc_reply_hdr *reply = (struct rpc_reply_hdr *)reply_buf;

 reply->xid = cpu_to_be32(xid);
 reply->type = cpu_to_be32(1);
 reply->reply_stat = cpu_to_be32(RPCMSG_REPLYSTAT_ACCEPTED);

 reply->data.acc_hdr.accept_stat = cpu_to_be32(accept_status);
 reply->data.acc_hdr.verf_flavor = 0;
 reply->data.acc_hdr.verf_length = 0;

 rc = msm_rpc_write(rpc_cb_server_client, reply_buf, sizeof(reply_buf));
 if (rc < 0)
  pr_err("adsp: could not write RPC response: %d\n", rc);
 return rc;
}
