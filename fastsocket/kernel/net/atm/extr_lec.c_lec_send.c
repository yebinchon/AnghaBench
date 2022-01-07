
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int truesize; struct net_device* dev; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct atm_vcc {scalar_t__ (* send ) (struct atm_vcc*,struct sk_buff*) ;int atm_options; } ;
struct TYPE_6__ {int atm_options; struct atm_vcc* vcc; } ;
struct TYPE_5__ {int sk_wmem_alloc; } ;


 TYPE_3__* ATM_SKB (struct sk_buff*) ;
 int atomic_add (int ,int *) ;
 TYPE_2__* sk_atm (struct atm_vcc*) ;
 scalar_t__ stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void
lec_send(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;

 ATM_SKB(skb)->vcc = vcc;
 ATM_SKB(skb)->atm_options = vcc->atm_options;

 atomic_add(skb->truesize, &sk_atm(vcc)->sk_wmem_alloc);
 if (vcc->send(vcc, skb) < 0) {
  dev->stats.tx_dropped++;
  return;
 }

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;
}
