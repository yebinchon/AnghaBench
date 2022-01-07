
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ packet_num; } ;
struct TYPE_6__ {int lock; int pMgmt; TYPE_1__ rxManeQueue; } ;
typedef int PSRxMgmtPacket ;
typedef TYPE_2__* PSDevice ;
typedef int INT ;


 int DeQueue (TYPE_2__*) ;
 scalar_t__ mlme_kill ;
 int schedule () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vMgrRxManagePacket (TYPE_2__*,int ,int ) ;

INT MlmeThread(
     void * Context)
{
 PSDevice pDevice = (PSDevice) Context;
 PSRxMgmtPacket pRxMgmtPacket;







 while (1)
 {





  spin_lock_irq(&pDevice->lock);
   while(pDevice->rxManeQueue.packet_num != 0)
   {
    pRxMgmtPacket = DeQueue(pDevice);


   vMgrRxManagePacket(pDevice, pDevice->pMgmt, pRxMgmtPacket);


   }
  spin_unlock_irq(&pDevice->lock);
  if (mlme_kill == 0)
  break;



 schedule();

 if (mlme_kill == 0)
  break;

 }


 return 0;

}
