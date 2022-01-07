
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct sk_buff {int dummy; } ;
struct TYPE_12__ {scalar_t__ nReadyRecv; int UnfinishedReceives; int RecvList; } ;
struct TYPE_8__ {int ipackets; } ;
struct et131x_adapter {int Flags; TYPE_5__ RxRing; TYPE_4__* regs; TYPE_2__* pdev; TYPE_1__ Stats; int PacketFilter; } ;
struct TYPE_13__ {scalar_t__ PacketSize; struct sk_buff* Packet; } ;
struct TYPE_10__ {int watchdog_timer; } ;
struct TYPE_11__ {TYPE_3__ global; } ;
struct TYPE_9__ {int dev; } ;
typedef TYPE_6__* PMP_RFD ;


 int NANO_IN_A_MICRO ;
 int NUM_PACKETS_HANDLED ;
 int PARM_TX_TIME_INT_DEF ;
 scalar_t__ RFD_LOW_WATER_MARK ;
 int WARN_ON (int) ;
 int dev_warn (int *,char*) ;
 int fMP_ADAPTER_LINK_DETECTION ;
 scalar_t__ list_empty (int *) ;
 TYPE_6__* nic_rx_pkts (struct et131x_adapter*) ;
 int writel (int,int *) ;

void et131x_handle_recv_interrupt(struct et131x_adapter *etdev)
{
 PMP_RFD pMpRfd = ((void*)0);
 struct sk_buff *PacketArray[NUM_PACKETS_HANDLED];
 PMP_RFD RFDFreeArray[NUM_PACKETS_HANDLED];
 uint32_t PacketArrayCount = 0;
 uint32_t PacketsToHandle;
 uint32_t PacketFreeCount = 0;
 bool TempUnfinishedRec = 0;

 PacketsToHandle = NUM_PACKETS_HANDLED;


 while (PacketArrayCount < PacketsToHandle) {
  if (list_empty(&etdev->RxRing.RecvList)) {
   WARN_ON(etdev->RxRing.nReadyRecv != 0);
   TempUnfinishedRec = 1;
   break;
  }

  pMpRfd = nic_rx_pkts(etdev);

  if (pMpRfd == ((void*)0))
   break;






  if (!etdev->PacketFilter ||
      !(etdev->Flags & fMP_ADAPTER_LINK_DETECTION) ||
      pMpRfd->PacketSize == 0) {
   continue;
  }


  etdev->Stats.ipackets++;


  if (etdev->RxRing.nReadyRecv >= RFD_LOW_WATER_MARK) {
  } else {
   RFDFreeArray[PacketFreeCount] = pMpRfd;
   PacketFreeCount++;

   dev_warn(&etdev->pdev->dev,
        "RFD's are running out\n");
  }

  PacketArray[PacketArrayCount] = pMpRfd->Packet;
  PacketArrayCount++;
 }

 if ((PacketArrayCount == NUM_PACKETS_HANDLED) || TempUnfinishedRec) {
  etdev->RxRing.UnfinishedReceives = 1;
  writel(PARM_TX_TIME_INT_DEF * NANO_IN_A_MICRO,
         &etdev->regs->global.watchdog_timer);
 } else {

  etdev->RxRing.UnfinishedReceives = 0;
 }
}
