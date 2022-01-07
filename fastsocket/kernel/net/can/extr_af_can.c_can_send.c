
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int pkt_type; int ip_summed; int sk; TYPE_1__* dev; int protocol; scalar_t__ data; } ;
struct can_frame {int can_dlc; } ;
struct TYPE_4__ {int tx_frames_delta; int tx_frames; } ;
struct TYPE_3__ {scalar_t__ type; int flags; } ;


 scalar_t__ ARPHRD_CAN ;
 int CHECKSUM_UNNECESSARY ;
 int EINVAL ;
 int ENETDOWN ;
 int ENOMEM ;
 int EPERM ;
 int ETH_P_CAN ;
 int GFP_ATOMIC ;
 int IFF_ECHO ;
 int IFF_UP ;
 int PACKET_BROADCAST ;
 int PACKET_HOST ;
 int PACKET_LOOPBACK ;
 TYPE_2__ can_stats ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int net_xmit_errno (int) ;
 int netif_rx_ni (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

int can_send(struct sk_buff *skb, int loop)
{
 struct sk_buff *newskb = ((void*)0);
 struct can_frame *cf = (struct can_frame *)skb->data;
 int err;

 if (skb->len != sizeof(struct can_frame) || cf->can_dlc > 8) {
  kfree_skb(skb);
  return -EINVAL;
 }

 if (skb->dev->type != ARPHRD_CAN) {
  kfree_skb(skb);
  return -EPERM;
 }

 if (!(skb->dev->flags & IFF_UP)) {
  kfree_skb(skb);
  return -ENETDOWN;
 }

 skb->protocol = htons(ETH_P_CAN);
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);

 if (loop) {



  skb->pkt_type = PACKET_LOOPBACK;
  if (!(skb->dev->flags & IFF_ECHO)) {




   newskb = skb_clone(skb, GFP_ATOMIC);
   if (!newskb) {
    kfree_skb(skb);
    return -ENOMEM;
   }

   newskb->sk = skb->sk;
   newskb->ip_summed = CHECKSUM_UNNECESSARY;
   newskb->pkt_type = PACKET_BROADCAST;
  }
 } else {

  skb->pkt_type = PACKET_HOST;
 }


 err = dev_queue_xmit(skb);
 if (err > 0)
  err = net_xmit_errno(err);

 if (err) {
  kfree_skb(newskb);
  return err;
 }

 if (newskb)
  netif_rx_ni(newskb);


 can_stats.tx_frames++;
 can_stats.tx_frames_delta++;

 return 0;
}
