
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ pTxDescRingVa; TYPE_3__* CurrSendHead; } ;
struct et131x_adapter {int Flags; int TCBSendQLock; TYPE_2__* pdev; TYPE_1__ TxRing; } ;
struct TYPE_6__ {scalar_t__ Count; int Flags; int WrIndex; } ;
struct TYPE_5__ {int dev; } ;
typedef int TX_DESC_ENTRY_t ;
typedef TYPE_3__* PMP_TCB ;


 int INDEX10 (int ) ;
 scalar_t__ NIC_SEND_HANG_THRESHOLD ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ,int ) ;
 int et131x_close (struct net_device*) ;
 int et131x_open (struct net_device*) ;
 int fMP_ADAPTER_HARDWARE_ERROR ;
 int fMP_ADAPTER_LINK_DETECTION ;
 int fMP_ADAPTER_NON_RECOVER_ERROR ;
 int memcpy (int *,scalar_t__,int) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void et131x_tx_timeout(struct net_device *netdev)
{
 struct et131x_adapter *etdev = netdev_priv(netdev);
 PMP_TCB pMpTcb;
 unsigned long flags;


 if (etdev->Flags & fMP_ADAPTER_LINK_DETECTION)
  return;




 if (etdev->Flags & fMP_ADAPTER_NON_RECOVER_ERROR)
  return;


 if (etdev->Flags & fMP_ADAPTER_HARDWARE_ERROR) {
  dev_err(&etdev->pdev->dev, "hardware error - reset\n");
  return;
 }


 spin_lock_irqsave(&etdev->TCBSendQLock, flags);

 pMpTcb = etdev->TxRing.CurrSendHead;

 if (pMpTcb != ((void*)0)) {
  pMpTcb->Count++;

  if (pMpTcb->Count > NIC_SEND_HANG_THRESHOLD) {
   TX_DESC_ENTRY_t StuckDescriptors[10];

   if (INDEX10(pMpTcb->WrIndex) > 7) {
    memcpy(StuckDescriptors,
           etdev->TxRing.pTxDescRingVa +
           INDEX10(pMpTcb->WrIndex) - 6,
           sizeof(TX_DESC_ENTRY_t) * 10);
   }

   spin_unlock_irqrestore(&etdev->TCBSendQLock,
            flags);

   dev_warn(&etdev->pdev->dev,
    "Send stuck - reset.  pMpTcb->WrIndex %x, Flags 0x%08x\n",
    pMpTcb->WrIndex,
    pMpTcb->Flags);

   et131x_close(netdev);
   et131x_open(netdev);

   return;
  }
 }

 spin_unlock_irqrestore(&etdev->TCBSendQLock, flags);
}
