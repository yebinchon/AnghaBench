
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_frame {int can_dlc; } ;
struct bcm_op {int flags; struct can_frame const* last_frames; struct can_frame const* frames; } ;


 int BCM_CAN_DLC_MASK ;
 int GET_U64 (struct can_frame const*) ;
 int RX_CHECK_DLC ;
 int RX_RECV ;
 int bcm_rx_update_and_send (struct bcm_op*,struct can_frame const*,struct can_frame const*) ;

__attribute__((used)) static void bcm_rx_cmp_to_index(struct bcm_op *op, unsigned int index,
    const struct can_frame *rxdata)
{





 if (!(op->last_frames[index].can_dlc & RX_RECV)) {

  bcm_rx_update_and_send(op, &op->last_frames[index], rxdata);
  return;
 }



 if ((GET_U64(&op->frames[index]) & GET_U64(rxdata)) !=
     (GET_U64(&op->frames[index]) & GET_U64(&op->last_frames[index]))) {
  bcm_rx_update_and_send(op, &op->last_frames[index], rxdata);
  return;
 }

 if (op->flags & RX_CHECK_DLC) {

  if (rxdata->can_dlc != (op->last_frames[index].can_dlc &
     BCM_CAN_DLC_MASK)) {
   bcm_rx_update_and_send(op, &op->last_frames[index],
            rxdata);
   return;
  }
 }
}
