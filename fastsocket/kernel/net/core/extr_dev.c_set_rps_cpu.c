
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {size_t rxhash; } ;
struct rps_dev_flow_table {size_t mask; struct rps_dev_flow* flows; } ;
struct rps_dev_flow {int filter; scalar_t__ cpu; int last_qtail; } ;
struct netdev_rx_queue {int rps_flow_table; } ;
struct netdev_rps_info {struct netdev_rx_queue* _rx; } ;
struct netdev_rfs_info {int (* ndo_rx_flow_steer ) (struct net_device*,struct sk_buff*,scalar_t__,size_t) ;int rx_cpu_rmap; } ;
struct net_device {int features; } ;
struct TYPE_4__ {struct netdev_rfs_info rfs_data; struct netdev_rps_info rps_data; } ;
struct TYPE_3__ {int input_queue_head; } ;


 int NETIF_F_NTUPLE ;
 scalar_t__ RPS_NO_CPU ;
 int RPS_NO_FILTER ;
 scalar_t__ cpu_rmap_lookup_index (int ,scalar_t__) ;
 TYPE_2__* netdev_extended (struct net_device*) ;
 TYPE_1__ per_cpu (int ,scalar_t__) ;
 struct rps_dev_flow_table* rcu_dereference (int ) ;
 scalar_t__ skb_get_rx_queue (struct sk_buff*) ;
 int skb_rx_queue_recorded (struct sk_buff*) ;
 int softnet_data ;
 int stub1 (struct net_device*,struct sk_buff*,scalar_t__,size_t) ;

__attribute__((used)) static struct rps_dev_flow *
set_rps_cpu(struct net_device *dev, struct sk_buff *skb,
     struct rps_dev_flow *rflow, u16 next_cpu)
{
 if (next_cpu != RPS_NO_CPU) {
  rflow->last_qtail =
   per_cpu(softnet_data, next_cpu).input_queue_head;
 }

 rflow->cpu = next_cpu;
 return rflow;
}
