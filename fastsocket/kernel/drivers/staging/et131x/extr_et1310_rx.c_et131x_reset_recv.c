
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_7__ {struct list_head* next; } ;
struct TYPE_5__ {TYPE_3__ RecvList; TYPE_3__ RecvPendingList; } ;
struct et131x_adapter {TYPE_1__ RxRing; } ;
struct TYPE_6__ {int list_node; } ;
typedef TYPE_2__* PMP_RFD ;


 int MP_RFD ;
 int WARN_ON (int ) ;
 int list_empty (TYPE_3__*) ;
 scalar_t__ list_entry (struct list_head*,int ,int ) ;
 int list_move_tail (int *,TYPE_3__*) ;
 int list_node ;

void et131x_reset_recv(struct et131x_adapter *etdev)
{
 PMP_RFD pMpRfd;
 struct list_head *element;

 WARN_ON(list_empty(&etdev->RxRing.RecvList));




 while (!list_empty(&etdev->RxRing.RecvPendingList)) {
  element = etdev->RxRing.RecvPendingList.next;

  pMpRfd = (PMP_RFD) list_entry(element, MP_RFD, list_node);

  list_move_tail(&pMpRfd->list_node, &etdev->RxRing.RecvList);
 }
}
