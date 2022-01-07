
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; struct net_device* dev; int data; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ truesize; int head; int data; struct sk_buff* skb; } ;
typedef TYPE_1__ iobuff_t ;


 int ETH_P_IRDA ;
 scalar_t__ IRDA_RX_COPY_THRESHOLD ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int htons (int ) ;
 int netif_rx (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static inline void
async_bump(struct net_device *dev,
    struct net_device_stats *stats,
    iobuff_t *rx_buff)
{
 struct sk_buff *newskb;
 struct sk_buff *dataskb;
 int docopy;







 docopy = ((rx_buff->skb == ((void*)0)) ||
    (rx_buff->len < IRDA_RX_COPY_THRESHOLD));


 newskb = dev_alloc_skb(docopy ? rx_buff->len + 1 : rx_buff->truesize);
 if (!newskb) {
  stats->rx_dropped++;



  return;
 }




 skb_reserve(newskb, 1);

 if(docopy) {

  skb_copy_to_linear_data(newskb, rx_buff->data,
     rx_buff->len - 2);

  dataskb = newskb;
 } else {

  dataskb = rx_buff->skb;

  rx_buff->skb = newskb;
  rx_buff->head = newskb->data;

 }


 skb_put(dataskb, rx_buff->len - 2);


 dataskb->dev = dev;
 skb_reset_mac_header(dataskb);
 dataskb->protocol = htons(ETH_P_IRDA);

 netif_rx(dataskb);

 stats->rx_packets++;
 stats->rx_bytes += rx_buff->len;


 rx_buff->data = rx_buff->head;
 rx_buff->len = 0;
}
