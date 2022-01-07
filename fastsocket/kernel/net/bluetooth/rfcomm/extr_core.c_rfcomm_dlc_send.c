
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rfcomm_dlc {scalar_t__ state; int mtu; int flags; int tx_queue; int addr; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_dlc*,int,int) ;
 int EINVAL ;
 int ENOTCONN ;
 int RFCOMM_SCHED_TX ;
 int RFCOMM_TX_THROTTLED ;
 int rfcomm_make_uih (struct sk_buff*,int ) ;
 int rfcomm_schedule (int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

int rfcomm_dlc_send(struct rfcomm_dlc *d, struct sk_buff *skb)
{
 int len = skb->len;

 if (d->state != BT_CONNECTED)
  return -ENOTCONN;

 BT_DBG("dlc %p mtu %d len %d", d, d->mtu, len);

 if (len > d->mtu)
  return -EINVAL;

 rfcomm_make_uih(skb, d->addr);
 skb_queue_tail(&d->tx_queue, skb);

 if (!test_bit(RFCOMM_TX_THROTTLED, &d->flags))
  rfcomm_schedule(RFCOMM_SCHED_TX);
 return len;
}
