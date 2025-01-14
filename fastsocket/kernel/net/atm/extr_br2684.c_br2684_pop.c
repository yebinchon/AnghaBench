
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct br2684_vcc {int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;


 struct br2684_vcc* BR2684_VCC (struct atm_vcc*) ;
 scalar_t__ atm_may_send (struct atm_vcc*,int ) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*,struct atm_vcc*,struct net_device*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void br2684_pop(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct br2684_vcc *brvcc = BR2684_VCC(vcc);
 struct net_device *net_dev = skb->dev;

 pr_debug("br2684_pop(vcc %p ; net_dev %p )\n", vcc, net_dev);
 brvcc->old_pop(vcc, skb);

 if (!net_dev)
  return;

 if (atm_may_send(vcc, 0))
  netif_wake_queue(net_dev);

}
