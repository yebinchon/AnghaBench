
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int qlen; int * skb; int peer_pid; } ;
struct nfgenmsg {int dummy; } ;


 int MSG_DONTWAIT ;
 int NLMSG_DONE ;
 int NLMSG_PUT (int *,int ,int ,int ,int) ;
 int nfnetlink_unicast (int *,int ,int ) ;

__attribute__((used)) static int
__nfulnl_send(struct nfulnl_instance *inst)
{
 int status = -1;

 if (inst->qlen > 1)
  NLMSG_PUT(inst->skb, 0, 0,
     NLMSG_DONE,
     sizeof(struct nfgenmsg));

 status = nfnetlink_unicast(inst->skb, inst->peer_pid, MSG_DONTWAIT);

 inst->qlen = 0;
 inst->skb = ((void*)0);

nlmsg_failure:
 return status;
}
