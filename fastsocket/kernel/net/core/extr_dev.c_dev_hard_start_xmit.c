
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; unsigned int len; int destructor; struct sk_buff* next; scalar_t__ encapsulation; scalar_t__ vlan_tci; } ;
struct netdev_queue {int dummy; } ;
struct net_device_ops {int (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;
struct net_device {int priv_flags; struct net_device_ops* netdev_ops; } ;
struct TYPE_2__ {int destructor; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 TYPE_1__* DEV_GSO_CB (struct sk_buff*) ;
 int IFF_XMIT_DST_RELEASE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NETIF_F_ALL_CSUM ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_SG ;
 scalar_t__ __skb_linearize (struct sk_buff*) ;
 struct sk_buff* __vlan_put_tag (struct sk_buff*,int ) ;
 int dev_gso_segment (struct sk_buff*,int) ;
 int dev_queue_xmit_nit (struct sk_buff*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 scalar_t__ netif_needs_gso (struct sk_buff*,int) ;
 int netif_skb_features (struct sk_buff*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int ptype_all ;
 scalar_t__ skb_checksum_help (struct sk_buff*) ;
 int skb_checksum_start_offset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 scalar_t__ skb_needs_linearize (struct sk_buff*,int) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;
 int stub1 (struct sk_buff*,struct net_device*) ;
 int stub2 (struct sk_buff*,struct net_device*) ;
 int trace_net_dev_xmit (struct sk_buff*,int,struct net_device*,unsigned int) ;
 int txq_trans_update (struct netdev_queue*) ;
 scalar_t__ unlikely (int) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

int dev_hard_start_xmit(struct sk_buff *skb, struct net_device *dev,
   struct netdev_queue *txq)
{
 const struct net_device_ops *ops = dev->netdev_ops;
 int rc;
 unsigned int skb_len;

 if (likely(!skb->next)) {
  int features;

  features = netif_skb_features(skb);

  if (vlan_tx_tag_present(skb) &&
      !(features & NETIF_F_HW_VLAN_TX)) {
   skb = __vlan_put_tag(skb, vlan_tx_tag_get(skb));
   if (unlikely(!skb))
    goto out;

   skb->vlan_tci = 0;
  }





  if (skb->encapsulation)
   features &= NETIF_F_SG;

  if (netif_needs_gso(skb, features)) {
   if (unlikely(dev_gso_segment(skb, features)))
    goto out_kfree_skb;
   if (skb->next)
    goto gso;
  } else {
   if (skb_needs_linearize(skb, features) &&
       __skb_linearize(skb))
    goto out_kfree_skb;





   if (skb->ip_summed == CHECKSUM_PARTIAL) {
    if (!skb->encapsulation)
     skb_set_transport_header(skb,
      skb_checksum_start_offset(skb));

    if (!(features & NETIF_F_ALL_CSUM) &&
         skb_checksum_help(skb))
     goto out_kfree_skb;
   }
  }





  if (dev->priv_flags & IFF_XMIT_DST_RELEASE)
   skb_dst_drop(skb);

  if (!list_empty(&ptype_all))
   dev_queue_xmit_nit(skb, dev);

  skb_len = skb->len;
  rc = ops->ndo_start_xmit(skb, dev);
  trace_net_dev_xmit(skb, rc, dev, skb_len);
  if (rc == NETDEV_TX_OK)
   txq_trans_update(txq);
  return rc;
 }

gso:
 do {
  struct sk_buff *nskb = skb->next;

  skb->next = nskb->next;
  nskb->next = ((void*)0);

  if (!list_empty(&ptype_all))
   dev_queue_xmit_nit(nskb, dev);

  skb_len = nskb->len;
  rc = ops->ndo_start_xmit(nskb, dev);
  trace_net_dev_xmit(nskb, rc, dev, skb_len);
  if (unlikely(rc != NETDEV_TX_OK)) {
   nskb->next = skb->next;
   skb->next = nskb;
   return rc;
  }
  txq_trans_update(txq);
  if (unlikely(netif_tx_queue_stopped(txq) && skb->next))
   return NETDEV_TX_BUSY;
 } while (skb->next);

 skb->destructor = DEV_GSO_CB(skb)->destructor;

out_kfree_skb:
 kfree_skb(skb);
out:
 return NETDEV_TX_OK;
}
