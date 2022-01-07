
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cid; int pid; } ;
union rr_control_msg {TYPE_1__ cli; int cmd; } ;
struct msm_rpc_endpoint {int list; int read_q_wake_lock; int cid; int pid; } ;


 int RPCROUTER_CTRL_CMD_REMOVE_CLIENT ;
 int RR (char*,int ,int ) ;
 int kfree (struct msm_rpc_endpoint*) ;
 int list_del (int *) ;
 int rpcrouter_send_control_msg (union rr_control_msg*) ;
 int wake_lock_destroy (int *) ;

int msm_rpcrouter_destroy_local_endpoint(struct msm_rpc_endpoint *ept)
{
 int rc;
 union rr_control_msg msg;

 msg.cmd = RPCROUTER_CTRL_CMD_REMOVE_CLIENT;
 msg.cli.pid = ept->pid;
 msg.cli.cid = ept->cid;

 RR("x REMOVE_CLIENT id=%d:%08x\n", ept->pid, ept->cid);
 rc = rpcrouter_send_control_msg(&msg);
 if (rc < 0)
  return rc;

 wake_lock_destroy(&ept->read_q_wake_lock);
 list_del(&ept->list);
 kfree(ept);
 return 0;
}
