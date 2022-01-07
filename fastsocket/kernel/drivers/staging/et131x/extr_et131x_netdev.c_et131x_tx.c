
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int trans_start; } ;


 int ENOMEM ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int et131x_send_packets (struct sk_buff*,struct net_device*) ;
 int jiffies ;
 int netif_stop_queue (struct net_device*) ;

int et131x_tx(struct sk_buff *skb, struct net_device *netdev)
{
 int status = 0;


 netdev->trans_start = jiffies;


 status = et131x_send_packets(skb, netdev);


 if (status != 0) {
  if (status == -ENOMEM) {



   netif_stop_queue(netdev);
   status = NETDEV_TX_BUSY;
  } else {
   status = NETDEV_TX_OK;
  }
 }
 return status;
}
