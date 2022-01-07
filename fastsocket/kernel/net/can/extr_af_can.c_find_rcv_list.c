
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dev_rcv_lists {struct hlist_head* rx; struct hlist_head* rx_sff; } ;
typedef int canid_t ;


 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_EFF_RTR_FLAGS ;
 int CAN_ERR_FLAG ;
 int CAN_ERR_MASK ;
 int CAN_INV_FILTER ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 size_t RX_ALL ;
 size_t RX_EFF ;
 size_t RX_ERR ;
 size_t RX_FIL ;
 size_t RX_INV ;

__attribute__((used)) static struct hlist_head *find_rcv_list(canid_t *can_id, canid_t *mask,
     struct dev_rcv_lists *d)
{
 canid_t inv = *can_id & CAN_INV_FILTER;


 if (*mask & CAN_ERR_FLAG) {

  *mask &= CAN_ERR_MASK;
  return &d->rx[RX_ERR];
 }






 if ((*mask & CAN_EFF_FLAG) && !(*can_id & CAN_EFF_FLAG))
  *mask &= (CAN_SFF_MASK | (CAN_EFF_FLAG | CAN_RTR_FLAG));


 *can_id &= *mask;


 if (inv)
  return &d->rx[RX_INV];


 if (!(*mask))
  return &d->rx[RX_ALL];


 if (((*mask & (CAN_EFF_FLAG | CAN_RTR_FLAG)) == (CAN_EFF_FLAG | CAN_RTR_FLAG))
     && !(*can_id & CAN_RTR_FLAG)) {

  if (*can_id & CAN_EFF_FLAG) {
   if (*mask == (CAN_EFF_MASK | (CAN_EFF_FLAG | CAN_RTR_FLAG))) {

    return &d->rx[RX_EFF];
   }
  } else {
   if (*mask == (CAN_SFF_MASK | (CAN_EFF_FLAG | CAN_RTR_FLAG)))
    return &d->rx_sff[*can_id];
  }
 }


 return &d->rx[RX_FIL];
}
