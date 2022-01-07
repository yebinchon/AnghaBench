
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_bh; int nsd_rxq; } ;
typedef TYPE_1__ wlandevice_t ;
struct sk_buff {int dummy; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

void p80211netdev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
{

 skb_queue_tail(&wlandev->nsd_rxq, skb);

 tasklet_schedule(&wlandev->rx_bh);

 return;
}
