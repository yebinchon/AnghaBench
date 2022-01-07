
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {int dummy; } ;
struct sk_buff {int len; TYPE_1__* dev; } ;
struct netdev_vport {TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; int name; } ;


 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 struct netdev_vport* netdev_vport_priv (struct vport*) ;
 int packet_length (struct sk_buff*) ;
 int pr_warn (char*,int ,int,int) ;
 int skb_is_gso (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int netdev_send(struct vport *vport, struct sk_buff *skb)
{
 struct netdev_vport *netdev_vport = netdev_vport_priv(vport);
 int mtu = netdev_vport->dev->mtu;
 int len;

 if (unlikely(packet_length(skb) > mtu && !skb_is_gso(skb))) {
  if (net_ratelimit())
   pr_warn("%s: dropped over-mtu packet: %d > %d\n",
         netdev_vport->dev->name,
         packet_length(skb), mtu);
  goto drop;
 }

 skb->dev = netdev_vport->dev;
 len = skb->len;
 dev_queue_xmit(skb);

 return len;

drop:
 kfree_skb(skb);
 return 0;
}
