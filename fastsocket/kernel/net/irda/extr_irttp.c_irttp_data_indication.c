
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_packets; } ;
struct tsap_cb {int send_credit; int rx_queue; int lock; int remote_credit; TYPE_1__ stats; } ;
struct sk_buff {int* data; int len; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int irttp_run_rx_queue (struct tsap_cb*) ;
 int irttp_run_tx_queue (struct tsap_cb*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int irttp_data_indication(void *instance, void *sap,
     struct sk_buff *skb)
{
 struct tsap_cb *self;
 unsigned long flags;
 int n;

 self = (struct tsap_cb *) instance;

 n = skb->data[0] & 0x7f;

 self->stats.rx_packets++;






 spin_lock_irqsave(&self->lock, flags);
 self->send_credit += n;
 if (skb->len > 1)
  self->remote_credit--;
 spin_unlock_irqrestore(&self->lock, flags);





 if (skb->len > 1) {




  skb_queue_tail(&self->rx_queue, skb);
 } else {

  dev_kfree_skb(skb);
 }
 irttp_run_rx_queue(self);
 if (self->send_credit == n) {

  irttp_run_tx_queue(self);



 }

 return 0;
}
