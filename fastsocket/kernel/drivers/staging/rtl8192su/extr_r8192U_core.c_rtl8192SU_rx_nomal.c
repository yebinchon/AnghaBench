
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ cb; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct TYPE_2__ {int rxbytesunicast; int rxurberr; int rxoktotal; } ;
struct r8192_priv {TYPE_1__ stats; int ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int noise; int freq; int rate; int signal; } ;
struct ieee80211_hdr_1addr {int addr1; } ;
typedef int rx_desc_819x_usb ;
typedef struct rtl8192_rx_info rtl8192_rx_info ;


 int IEEE80211_24GHZ_BAND ;
 int RX_URB_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_rx (int ,struct sk_buff*,struct ieee80211_rx_stats*) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int printk (char*,int) ;
 int rtl8192SU_query_rxdesc_status (struct sk_buff*,struct ieee80211_rx_stats*,int) ;
 int skb_trim (struct sk_buff*,int) ;

void rtl8192SU_rx_nomal(struct sk_buff* skb)
{
 rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
 struct net_device *dev=info->dev;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct ieee80211_rx_stats stats = {
  .signal = 0,
  .noise = -98,
  .rate = 0,

  .freq = IEEE80211_24GHZ_BAND,
 };
 u32 rx_pkt_len = 0;
 struct ieee80211_hdr_1addr *ieee80211_hdr = ((void*)0);
 bool unicast_packet = 0;



 if((skb->len >=(20 + sizeof(rx_desc_819x_usb))) && (skb->len < RX_URB_SIZE)) {


  rtl8192SU_query_rxdesc_status(skb, &stats, 0);



  priv->stats.rxoktotal++;


  skb_trim(skb, skb->len - 4 );

  rx_pkt_len = skb->len;
  ieee80211_hdr = (struct ieee80211_hdr_1addr *)skb->data;
  unicast_packet = 0;
  if(is_broadcast_ether_addr(ieee80211_hdr->addr1)) {

  }else if(is_multicast_ether_addr(ieee80211_hdr->addr1)){

  }else {

   unicast_packet = 1;
  }

  if(!ieee80211_rx(priv->ieee80211,skb, &stats)) {
   dev_kfree_skb_any(skb);
  } else {

   if(unicast_packet) {
    priv->stats.rxbytesunicast += rx_pkt_len;
   }
  }


 }
 else
 {
  priv->stats.rxurberr++;
  printk("actual_length:%d\n", skb->len);
  dev_kfree_skb_any(skb);
 }

}
