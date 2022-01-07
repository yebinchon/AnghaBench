
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct rps_dev_flow {int last_qtail; } ;


 int __netif_receive_skb (struct sk_buff*) ;
 scalar_t__ enable_rps_framework ;
 int enqueue_to_backlog (struct sk_buff*,int,int *) ;
 int get_rps_cpu (int ,struct sk_buff*,struct rps_dev_flow**) ;
 int netif_rps_process (struct sk_buff*) ;

int netif_receive_skb(struct sk_buff *skb)
{
 struct rps_dev_flow voidflow, *rflow = &voidflow;
 int cpu = -1, ret;

 if (enable_rps_framework)
  cpu = netif_rps_process(skb);
 if (cpu == -1)
  cpu = get_rps_cpu(skb->dev, skb, &rflow);

 if (cpu >= 0)
  ret = enqueue_to_backlog(skb, cpu, &rflow->last_qtail);
 else
  ret = __netif_receive_skb(skb);

 return ret;
}
