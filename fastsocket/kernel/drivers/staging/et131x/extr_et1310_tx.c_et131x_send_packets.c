
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct TYPE_4__ {int SendWaitQueue; } ;
struct et131x_adapter {TYPE_1__ net_stats; scalar_t__ DriverNoPhyAccess; TYPE_2__ TxRing; } ;


 int ENOMEM ;
 scalar_t__ MP_SHOULD_FAIL_SEND (struct et131x_adapter*) ;
 scalar_t__ MP_TCB_RESOURCES_NOT_AVAILABLE (struct et131x_adapter*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int et131x_send_packet (struct sk_buff*,struct et131x_adapter*) ;
 int list_empty (int *) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

int et131x_send_packets(struct sk_buff *skb, struct net_device *netdev)
{
 int status = 0;
 struct et131x_adapter *etdev = ((void*)0);

 etdev = netdev_priv(netdev);
 if (!list_empty(&etdev->TxRing.SendWaitQueue) ||
     MP_TCB_RESOURCES_NOT_AVAILABLE(etdev)) {




  status = -ENOMEM;
 } else {







  if (MP_SHOULD_FAIL_SEND(etdev) || etdev->DriverNoPhyAccess
      || !netif_carrier_ok(netdev)) {
   dev_kfree_skb_any(skb);
   skb = ((void*)0);

   etdev->net_stats.tx_dropped++;
  } else {
   status = et131x_send_packet(skb, etdev);

   if (status == -ENOMEM) {






   } else if (status != 0) {



    dev_kfree_skb_any(skb);
    skb = ((void*)0);
    etdev->net_stats.tx_dropped++;
   }
  }
 }
 return status;
}
