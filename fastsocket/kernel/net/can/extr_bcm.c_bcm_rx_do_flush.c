
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_op {TYPE_1__* last_frames; } ;
struct TYPE_2__ {int can_dlc; } ;


 int RX_THR ;
 int bcm_rx_changed (struct bcm_op*,TYPE_1__*) ;

__attribute__((used)) static inline int bcm_rx_do_flush(struct bcm_op *op, int update,
      unsigned int index)
{
 if ((op->last_frames) && (op->last_frames[index].can_dlc & RX_THR)) {
  if (update)
   bcm_rx_changed(op, &op->last_frames[index]);
  return 1;
 }
 return 0;
}
