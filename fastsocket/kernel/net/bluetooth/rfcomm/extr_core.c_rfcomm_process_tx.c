
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct rfcomm_dlc {int cfc; int rx_credits; int tx_credits; int tx_queue; int flags; int session; int addr; int v24_sig; int dlci; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ,int,int,int) ;
 int RFCOMM_MSC_PENDING ;
 int RFCOMM_RX_THROTTLED ;
 int RFCOMM_TX_THROTTLED ;
 int kfree_skb (struct sk_buff*) ;
 int rfcomm_send_credits (int ,int ,int) ;
 int rfcomm_send_frame (int ,int ,int ) ;
 int rfcomm_send_msc (int ,int,int ,int ) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_len (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int rfcomm_process_tx(struct rfcomm_dlc *d)
{
 struct sk_buff *skb;
 int err;

 BT_DBG("dlc %p state %ld cfc %d rx_credits %d tx_credits %d",
   d, d->state, d->cfc, d->rx_credits, d->tx_credits);


 if (test_and_clear_bit(RFCOMM_MSC_PENDING, &d->flags))
  rfcomm_send_msc(d->session, 1, d->dlci, d->v24_sig);

 if (d->cfc) {


  if (!test_bit(RFCOMM_RX_THROTTLED, &d->flags) &&
    d->rx_credits <= (d->cfc >> 2)) {
   rfcomm_send_credits(d->session, d->addr, d->cfc - d->rx_credits);
   d->rx_credits = d->cfc;
  }
 } else {


  d->tx_credits = 5;
 }

 if (test_bit(RFCOMM_TX_THROTTLED, &d->flags))
  return skb_queue_len(&d->tx_queue);

 while (d->tx_credits && (skb = skb_dequeue(&d->tx_queue))) {
  err = rfcomm_send_frame(d->session, skb->data, skb->len);
  if (err < 0) {
   skb_queue_head(&d->tx_queue, skb);
   break;
  }
  kfree_skb(skb);
  d->tx_credits--;
 }

 if (d->cfc && !d->tx_credits) {


  set_bit(RFCOMM_TX_THROTTLED, &d->flags);
 }

 return skb_queue_len(&d->tx_queue);
}
