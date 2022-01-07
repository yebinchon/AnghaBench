
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rr_server {int pid; int vers; int prog; int cid; } ;
struct msm_rpc_endpoint {int reply_pid; int dst_pid; int list; int incomplete; int read_q_wake_lock; int read_q_lock; int read_q; int wait_q; void* dst_vers; void* dst_prog; int dst_cid; scalar_t__ dev; int pid; scalar_t__ cid; } ;
typedef scalar_t__ dev_t ;


 int BUG_ON (int) ;
 int D (char*,struct msm_rpc_endpoint*,...) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MKDEV (int ,int ) ;
 int RPCROUTER_PID_LOCAL ;
 int WAKE_LOCK_SUSPEND ;
 void* cpu_to_be32 (int ) ;
 int init_waitqueue_head (int *) ;
 struct msm_rpc_endpoint* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int local_endpoints ;
 int local_endpoints_lock ;
 int memset (struct msm_rpc_endpoint*,int ,int) ;
 scalar_t__ msm_rpcrouter_devno ;
 struct rr_server* rpcrouter_lookup_server_by_dev (scalar_t__) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_lock_init (int *,int ,char*) ;

struct msm_rpc_endpoint *msm_rpcrouter_create_local_endpoint(dev_t dev)
{
 struct msm_rpc_endpoint *ept;
 unsigned long flags;

 ept = kmalloc(sizeof(struct msm_rpc_endpoint), GFP_KERNEL);
 if (!ept)
  return ((void*)0);
 memset(ept, 0, sizeof(struct msm_rpc_endpoint));


 ept->reply_pid = 0xffffffff;

 ept->cid = (uint32_t) ept;
 ept->pid = RPCROUTER_PID_LOCAL;
 ept->dev = dev;

 if ((dev != msm_rpcrouter_devno) && (dev != MKDEV(0, 0))) {
  struct rr_server *srv;





  srv = rpcrouter_lookup_server_by_dev(dev);

  BUG_ON(!srv);

  ept->dst_pid = srv->pid;
  ept->dst_cid = srv->cid;
  ept->dst_prog = cpu_to_be32(srv->prog);
  ept->dst_vers = cpu_to_be32(srv->vers);

  D("Creating local ept %p @ %08x:%08x\n", ept, srv->prog, srv->vers);
 } else {

  ept->dst_pid = 0xffffffff;
  D("Creating a master local ept %p\n", ept);
 }

 init_waitqueue_head(&ept->wait_q);
 INIT_LIST_HEAD(&ept->read_q);
 spin_lock_init(&ept->read_q_lock);
 wake_lock_init(&ept->read_q_wake_lock, WAKE_LOCK_SUSPEND, "rpc_read");
 INIT_LIST_HEAD(&ept->incomplete);

 spin_lock_irqsave(&local_endpoints_lock, flags);
 list_add_tail(&ept->list, &local_endpoints);
 spin_unlock_irqrestore(&local_endpoints_lock, flags);
 return ept;
}
