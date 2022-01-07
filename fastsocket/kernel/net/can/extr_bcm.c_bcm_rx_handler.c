
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; int tstamp; scalar_t__ data; } ;
struct can_frame {scalar_t__ can_id; } ;
struct bcm_op {scalar_t__ can_id; int flags; int nframes; struct can_frame const* frames; int * last_frames; int frames_abs; int rx_ifindex; int rx_stamp; int timer; } ;
struct TYPE_2__ {int ifindex; } ;


 int GET_U64 (struct can_frame const*) ;
 int RX_FILTER_ID ;
 int RX_RTR_FRAME ;
 int bcm_can_tx (struct bcm_op*) ;
 int bcm_rx_cmp_to_index (struct bcm_op*,unsigned int,struct can_frame const*) ;
 int bcm_rx_starttimer (struct bcm_op*) ;
 int bcm_rx_update_and_send (struct bcm_op*,int *,struct can_frame const*) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void bcm_rx_handler(struct sk_buff *skb, void *data)
{
 struct bcm_op *op = (struct bcm_op *)data;
 const struct can_frame *rxframe = (struct can_frame *)skb->data;
 unsigned int i;


 hrtimer_cancel(&op->timer);

 if (op->can_id != rxframe->can_id)
  return;


 op->rx_stamp = skb->tstamp;

 op->rx_ifindex = skb->dev->ifindex;

 op->frames_abs++;

 if (op->flags & RX_RTR_FRAME) {

  bcm_can_tx(op);
  return;
 }

 if (op->flags & RX_FILTER_ID) {

  bcm_rx_update_and_send(op, &op->last_frames[0], rxframe);
  goto rx_starttimer;
 }

 if (op->nframes == 1) {

  bcm_rx_cmp_to_index(op, 0, rxframe);
  goto rx_starttimer;
 }

 if (op->nframes > 1) {







  for (i = 1; i < op->nframes; i++) {
   if ((GET_U64(&op->frames[0]) & GET_U64(rxframe)) ==
       (GET_U64(&op->frames[0]) &
        GET_U64(&op->frames[i]))) {
    bcm_rx_cmp_to_index(op, i, rxframe);
    break;
   }
  }
 }

rx_starttimer:
 bcm_rx_starttimer(op);
}
