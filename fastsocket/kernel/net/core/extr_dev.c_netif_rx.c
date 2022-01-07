
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv64; } ;
struct sk_buff {int dev; TYPE_1__ tstamp; } ;
struct rps_dev_flow {int last_qtail; } ;


 int NET_RX_DROP ;
 int enqueue_to_backlog (struct sk_buff*,int,int *) ;
 int get_rps_cpu (int ,struct sk_buff*,struct rps_dev_flow**) ;
 int net_timestamp (struct sk_buff*) ;
 scalar_t__ netpoll_rx (struct sk_buff*) ;
 int smp_processor_id () ;
 int trace_netif_rx (struct sk_buff*) ;

int netif_rx(struct sk_buff *skb)
{
 struct rps_dev_flow voidflow, *rflow = &voidflow;
 int cpu;


 if (netpoll_rx(skb))
  return NET_RX_DROP;

 if (!skb->tstamp.tv64)
  net_timestamp(skb);

 trace_netif_rx(skb);
 cpu = get_rps_cpu(skb->dev, skb, &rflow);
 if (cpu < 0)
  cpu = smp_processor_id();

 return enqueue_to_backlog(skb, cpu, &rflow->last_qtail);
}
