
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*,int) ;int sk_receive_queue; } ;
struct sk_buff {int len; int* data; int protocol; int truesize; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {int flags; int addr_len; TYPE_1__ stats; int dev_addr; int name; } ;
struct lecdatahdr_8025 {unsigned char* h_dest; unsigned char* h_source; } ;
struct lecdatahdr_8023 {unsigned char* h_dest; unsigned char* h_source; } ;
struct lec_priv {scalar_t__ is_trdev; int lec_arp_empty_ones; int is_proxy; int lec_arp_lock; int lecd; int lecid; } ;
struct lec_arp_table {struct atm_vcc* vcc; } ;
struct atm_vcc {int vci; int vpi; scalar_t__ proto_data; } ;
struct atm_skb_data {int dummy; } ;
typedef scalar_t__ __be16 ;


 int ATM_SKB (struct sk_buff*) ;
 int IFF_UP ;
 int atm_return (struct atm_vcc*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int hlist_empty (int *) ;
 scalar_t__ htons (int ) ;
 int lec_arp_check_empties (struct lec_priv*,struct atm_vcc*,struct sk_buff*) ;
 struct lec_arp_table* lec_arp_find (struct lec_priv*,unsigned char*) ;
 int lec_arp_put (struct lec_arp_table*) ;
 int lec_arp_remove (struct lec_priv*,struct lec_arp_table*) ;
 int lec_ctrl_magic ;
 scalar_t__ lec_is_data_direct (struct atm_vcc*) ;
 int lec_vcc_close (struct lec_priv*,struct atm_vcc*) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int memset (int ,int ,int) ;
 struct lec_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int pr_debug (char*,...) ;
 int printk (char*,char*,...) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct sock*,int) ;
 int tr_type_trans (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void lec_push(struct atm_vcc *vcc, struct sk_buff *skb)
{
 unsigned long flags;
 struct net_device *dev = (struct net_device *)vcc->proto_data;
 struct lec_priv *priv = netdev_priv(dev);
 if (!skb) {
  pr_debug("%s: null skb\n", dev->name);
  lec_vcc_close(priv, vcc);
  return;
 }
 if (memcmp(skb->data, lec_ctrl_magic, 4) == 0) {
  struct sock *sk = sk_atm(vcc);

  pr_debug("%s: To daemon\n", dev->name);
  skb_queue_tail(&sk->sk_receive_queue, skb);
  sk->sk_data_ready(sk, skb->len);
 } else {
  struct lec_arp_table *entry;
  unsigned char *src, *dst;

  atm_return(vcc, skb->truesize);
  if (*(__be16 *) skb->data == htons(priv->lecid) ||
      !priv->lecd || !(dev->flags & IFF_UP)) {




   pr_debug("Ignoring frame...\n");
   dev_kfree_skb(skb);
   return;
  }





   dst = ((struct lecdatahdr_8023 *)skb->data)->h_dest;





  spin_lock_irqsave(&priv->lec_arp_lock, flags);
  if (lec_is_data_direct(vcc)) {







    src =
        ((struct lecdatahdr_8023 *)skb->data)->
        h_source;
   entry = lec_arp_find(priv, src);
   if (entry && entry->vcc != vcc) {
    lec_arp_remove(priv, entry);
    lec_arp_put(entry);
   }
  }
  spin_unlock_irqrestore(&priv->lec_arp_lock, flags);

  if (!(dst[0] & 0x01) &&
      !priv->is_proxy &&
      memcmp(dst, dev->dev_addr, dev->addr_len)) {
   dev_kfree_skb(skb);
   return;
  }
  if (!hlist_empty(&priv->lec_arp_empty_ones)) {
   lec_arp_check_empties(priv, vcc, skb);
  }
  skb_pull(skb, 2);





   skb->protocol = eth_type_trans(skb, dev);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += skb->len;
  memset(ATM_SKB(skb), 0, sizeof(struct atm_skb_data));
  netif_rx(skb);
 }
}
