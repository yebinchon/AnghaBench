
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int len; int protocol; int pkt_type; struct net_device* dev; scalar_t__ priority; } ;
struct phonethdr {void* pn_sobj; void* pn_robj; int pn_length; scalar_t__ pn_res; void* pn_sdev; void* pn_rdev; } ;
struct net_device {int mtu; } ;


 int EHOSTUNREACH ;
 int EMSGSIZE ;
 int EOPNOTSUPP ;
 int ETH_P_PHONET ;
 int PACKET_LOOPBACK ;
 scalar_t__ PNADDR_BROADCAST ;
 int WARN_ON (int) ;
 int __cpu_to_be16 (int) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int *,int *,int) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 int netif_rx_ni (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__ pn_addr (int ) ;
 void* pn_dev (int ) ;
 struct phonethdr* pn_hdr (struct sk_buff*) ;
 void* pn_obj (int ) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int pn_send(struct sk_buff *skb, struct net_device *dev,
   u16 dst, u16 src, u8 res, u8 irq)
{
 struct phonethdr *ph;
 int err;

 if (skb->len + 2 > 0xffff ||
     skb->len + sizeof(struct phonethdr) > dev->mtu) {
  err = -EMSGSIZE;
  goto drop;
 }


 if (pn_addr(dst) == PNADDR_BROADCAST) {
  err = -EOPNOTSUPP;
  goto drop;
 }

 skb_reset_transport_header(skb);
 WARN_ON(skb_headroom(skb) & 1);
 skb_push(skb, sizeof(struct phonethdr));
 skb_reset_network_header(skb);
 ph = pn_hdr(skb);
 ph->pn_rdev = pn_dev(dst);
 ph->pn_sdev = pn_dev(src);
 ph->pn_res = res;
 ph->pn_length = __cpu_to_be16(skb->len + 2 - sizeof(*ph));
 ph->pn_robj = pn_obj(dst);
 ph->pn_sobj = pn_obj(src);

 skb->protocol = htons(ETH_P_PHONET);
 skb->priority = 0;
 skb->dev = dev;

 if (pn_addr(src) == pn_addr(dst)) {
  skb_reset_mac_header(skb);
  skb->pkt_type = PACKET_LOOPBACK;
  skb_orphan(skb);
  if (irq)
   netif_rx(skb);
  else
   netif_rx_ni(skb);
  err = 0;
 } else {
  err = dev_hard_header(skb, dev, ntohs(skb->protocol),
     ((void*)0), ((void*)0), skb->len);
  if (err < 0) {
   err = -EHOSTUNREACH;
   goto drop;
  }
  err = dev_queue_xmit(skb);
 }

 return err;
drop:
 kfree_skb(skb);
 return err;
}
