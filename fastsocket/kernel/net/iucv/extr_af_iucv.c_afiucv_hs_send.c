
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {scalar_t__ sk_type; } ;
struct sk_buff {scalar_t__ len; void* protocol; TYPE_1__* dev; struct af_iucv_trans_hdr* head; } ;
struct iucv_sock {int msglimit; int msg_recv; int send_skb_q; TYPE_1__* hs_dev; struct iucv_message* src_name; struct iucv_message* src_user_id; struct iucv_message* dst_name; struct iucv_message* dst_user_id; } ;
struct iucv_message {int dummy; } ;
struct af_iucv_trans_hdr {int version; scalar_t__ flags; int window; int iucv_hdr; int * srcAppName; int * srcUserID; int * destAppName; int * destUserID; void* magic; } ;
struct TYPE_2__ {int flags; scalar_t__ mtu; } ;


 scalar_t__ AF_IUCV_FLAG_SYN ;
 scalar_t__ AF_IUCV_FLAG_WIN ;
 int ASCEBC (int *,int) ;
 int EMSGSIZE ;
 int ENETDOWN ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_HLEN ;
 void* ETH_P_AF_IUCV ;
 int GFP_ATOMIC ;
 int IFF_UP ;
 scalar_t__ SOCK_SEQPACKET ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int *,struct iucv_message*,int) ;
 int memset (struct af_iucv_trans_hdr*,int ,int) ;
 int net_xmit_eval (int) ;
 int netif_carrier_ok (TYPE_1__*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 int skb_unlink (struct sk_buff*,int *) ;

__attribute__((used)) static int afiucv_hs_send(struct iucv_message *imsg, struct sock *sock,
     struct sk_buff *skb, u8 flags)
{
 struct iucv_sock *iucv = iucv_sk(sock);
 struct af_iucv_trans_hdr *phs_hdr;
 struct sk_buff *nskb;
 int err, confirm_recv = 0;

 memset(skb->head, 0, ETH_HLEN);
 phs_hdr = (struct af_iucv_trans_hdr *)skb_push(skb,
     sizeof(struct af_iucv_trans_hdr));
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 skb_push(skb, ETH_HLEN);
 skb_reset_mac_header(skb);
 memset(phs_hdr, 0, sizeof(struct af_iucv_trans_hdr));

 phs_hdr->magic = ETH_P_AF_IUCV;
 phs_hdr->version = 1;
 phs_hdr->flags = flags;
 if (flags == AF_IUCV_FLAG_SYN)
  phs_hdr->window = iucv->msglimit;
 else if ((flags == AF_IUCV_FLAG_WIN) || !flags) {
  confirm_recv = atomic_read(&iucv->msg_recv);
  phs_hdr->window = confirm_recv;
  if (confirm_recv)
   phs_hdr->flags = phs_hdr->flags | AF_IUCV_FLAG_WIN;
 }
 memcpy(phs_hdr->destUserID, iucv->dst_user_id, 8);
 memcpy(phs_hdr->destAppName, iucv->dst_name, 8);
 memcpy(phs_hdr->srcUserID, iucv->src_user_id, 8);
 memcpy(phs_hdr->srcAppName, iucv->src_name, 8);
 ASCEBC(phs_hdr->destUserID, sizeof(phs_hdr->destUserID));
 ASCEBC(phs_hdr->destAppName, sizeof(phs_hdr->destAppName));
 ASCEBC(phs_hdr->srcUserID, sizeof(phs_hdr->srcUserID));
 ASCEBC(phs_hdr->srcAppName, sizeof(phs_hdr->srcAppName));
 if (imsg)
  memcpy(&phs_hdr->iucv_hdr, imsg, sizeof(struct iucv_message));

 skb->dev = iucv->hs_dev;
 if (!skb->dev)
  return -ENODEV;
 if (!(skb->dev->flags & IFF_UP) || !netif_carrier_ok(skb->dev))
  return -ENETDOWN;
 if (skb->len > skb->dev->mtu) {
  if (sock->sk_type == SOCK_SEQPACKET)
   return -EMSGSIZE;
  else
   skb_trim(skb, skb->dev->mtu);
 }
 skb->protocol = ETH_P_AF_IUCV;
 nskb = skb_clone(skb, GFP_ATOMIC);
 if (!nskb)
  return -ENOMEM;
 skb_queue_tail(&iucv->send_skb_q, nskb);
 err = dev_queue_xmit(skb);
 if (net_xmit_eval(err)) {
  skb_unlink(nskb, &iucv->send_skb_q);
  kfree_skb(nskb);
 } else {
  atomic_sub(confirm_recv, &iucv->msg_recv);
  WARN_ON(atomic_read(&iucv->msg_recv) < 0);
 }
 return net_xmit_eval(err);
}
