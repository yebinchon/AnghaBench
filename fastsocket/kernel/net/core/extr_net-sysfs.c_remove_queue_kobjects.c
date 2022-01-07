
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_rps_info {int queues_kset; } ;
struct net_device {int real_num_tx_queues; } ;
struct TYPE_2__ {int real_num_rx_queues; struct netdev_rps_info rps_data; } ;


 int kset_unregister (int ) ;
 int net_rx_queue_update_kobjects (struct net_device*,int,int ) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int netdev_queue_update_kobjects (struct net_device*,int,int ) ;

__attribute__((used)) static void remove_queue_kobjects(struct net_device *net)
{
 int real_rx = 0, real_tx = 0;
 struct netdev_rps_info *rpinfo = &netdev_extended(net)->rps_data;





 real_tx = net->real_num_tx_queues;

 net_rx_queue_update_kobjects(net, real_rx, 0);
 netdev_queue_update_kobjects(net, real_tx, 0);



}
