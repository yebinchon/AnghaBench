
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_rps_info {int queues_kset; } ;
struct TYPE_3__ {int kobj; } ;
struct net_device {int real_num_tx_queues; TYPE_1__ dev; } ;
struct TYPE_4__ {int real_num_rx_queues; struct netdev_rps_info rps_data; } ;


 int ENOMEM ;
 int kset_create_and_add (char*,int *,int *) ;
 int net_rx_queue_update_kobjects (struct net_device*,int,int) ;
 TYPE_2__* netdev_extended (struct net_device*) ;
 int netdev_queue_update_kobjects (struct net_device*,int,int) ;

__attribute__((used)) static int register_queue_kobjects(struct net_device *net)
{
 int error = 0, txq = 0, rxq = 0, real_rx = 0, real_tx = 0;
 struct netdev_rps_info *rpinfo = &netdev_extended(net)->rps_data;
 real_tx = net->real_num_tx_queues;

 error = net_rx_queue_update_kobjects(net, 0, real_rx);
 if (error)
  goto error;
 rxq = real_rx;

 error = netdev_queue_update_kobjects(net, 0, real_tx);
 if (error)
  goto error;
 txq = real_tx;

 return 0;

error:
 netdev_queue_update_kobjects(net, txq, 0);
 net_rx_queue_update_kobjects(net, rxq, 0);
 return error;
}
