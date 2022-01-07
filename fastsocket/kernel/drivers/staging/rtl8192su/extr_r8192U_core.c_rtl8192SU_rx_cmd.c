
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ cb; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int noise; int freq; int rate; int signal; } ;
typedef int rx_desc_819x_usb ;


 int COMP_RECV ;
 int IEEE80211_24GHZ_BAND ;
 int RT_TRACE (int ,char*) ;
 int RX_URB_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int query_rx_cmdpkt_desc_status (struct sk_buff*,struct ieee80211_rx_stats*) ;
 int rtl819xusb_process_received_packet (struct net_device*,struct ieee80211_rx_stats*) ;

void rtl8192SU_rx_cmd(struct sk_buff *skb)
{
 struct rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
 struct net_device *dev = info->dev;


 struct ieee80211_rx_stats stats = {
  .signal = 0,
  .noise = -98,
  .rate = 0,

  .freq = IEEE80211_24GHZ_BAND,
 };




 if( (skb->len >= sizeof(rx_desc_819x_usb)) && (skb->len <= RX_URB_SIZE) )

 {



  query_rx_cmdpkt_desc_status(skb,&stats);





  rtl819xusb_process_received_packet(dev,&stats);

  dev_kfree_skb_any(skb);
 }
 else
 {




 }
 RT_TRACE(COMP_RECV, "<--- HalUsbInCommandComplete8192SUsb()\n");

}
