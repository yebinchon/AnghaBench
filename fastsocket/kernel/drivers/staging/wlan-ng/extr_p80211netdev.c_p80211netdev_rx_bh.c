
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rx_bytes; int rx_packets; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_1__ linux_stats; int ethconv; TYPE_4__* netdev; int nsd_rxq; } ;
typedef TYPE_2__ wlandevice_t ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; TYPE_4__* dev; scalar_t__ data; int protocol; int pkt_type; int ip_summed; } ;
struct TYPE_9__ {int* a1; int fc; } ;
typedef TYPE_3__ p80211_hdr_a3_t ;
struct TYPE_10__ {scalar_t__ type; int flags; void* last_rx; int dev_addr; } ;
typedef TYPE_4__ netdevice_t ;


 scalar_t__ ARPHRD_ETHER ;
 int CHECKSUM_NONE ;
 int ETH_ALEN ;
 int ETH_P_80211_RAW ;
 int IFF_ALLMULTI ;
 int PACKET_OTHERHOST ;
 scalar_t__ WLAN_DEVICE_OPEN ;
 int dev_kfree_skb (struct sk_buff*) ;
 int htons (int ) ;
 void* jiffies ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int*,int ,int ) ;
 int netif_rx_ni (struct sk_buff*) ;
 scalar_t__ p80211_rx_typedrop (TYPE_2__*,int ) ;
 int pr_debug (char*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_p80211_to_ether (TYPE_2__*,int ,struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void p80211netdev_rx_bh(unsigned long arg)
{
 wlandevice_t *wlandev = (wlandevice_t *) arg;
 struct sk_buff *skb = ((void*)0);
 netdevice_t *dev = wlandev->netdev;
 p80211_hdr_a3_t *hdr;
 u16 fc;


 while ((skb = skb_dequeue(&wlandev->nsd_rxq))) {
  if (wlandev->state == WLAN_DEVICE_OPEN) {

   if (dev->type != ARPHRD_ETHER) {




    skb->dev = dev;
    skb_reset_mac_header(skb);
    skb->ip_summed = CHECKSUM_NONE;
    skb->pkt_type = PACKET_OTHERHOST;
    skb->protocol = htons(ETH_P_80211_RAW);
    dev->last_rx = jiffies;

    wlandev->linux_stats.rx_packets++;
    wlandev->linux_stats.rx_bytes += skb->len;
    netif_rx_ni(skb);
    continue;
   } else {
    hdr = (p80211_hdr_a3_t *) skb->data;
    fc = le16_to_cpu(hdr->fc);
    if (p80211_rx_typedrop(wlandev, fc)) {
     dev_kfree_skb(skb);
     continue;
    }


    if (wlandev->netdev->flags & IFF_ALLMULTI) {

     if (memcmp
         (hdr->a1, wlandev->netdev->dev_addr,
          ETH_ALEN) != 0) {

      if (!(hdr->a1[0] & 0x01)) {
       dev_kfree_skb(skb);
       continue;
      }
     }
    }

    if (skb_p80211_to_ether
        (wlandev, wlandev->ethconv, skb) == 0) {
     skb->dev->last_rx = jiffies;
     wlandev->linux_stats.rx_packets++;
     wlandev->linux_stats.rx_bytes +=
         skb->len;
     netif_rx_ni(skb);
     continue;
    }
    pr_debug("p80211_to_ether failed.\n");
   }
  }
  dev_kfree_skb(skb);
 }
}
