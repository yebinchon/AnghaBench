
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {scalar_t__ MediaState; int netdev; int Lock; int Flags; } ;


 scalar_t__ NETIF_STATUS_MEDIA_DISCONNECT ;
 int fMP_ADAPTER_LINK_DETECTION ;
 int netif_carrier_off (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void et131x_link_detection_handler(unsigned long data)
{
 struct et131x_adapter *etdev = (struct et131x_adapter *) data;
 unsigned long flags;

 if (etdev->MediaState == 0) {
  spin_lock_irqsave(&etdev->Lock, flags);

  etdev->MediaState = NETIF_STATUS_MEDIA_DISCONNECT;
  etdev->Flags &= ~fMP_ADAPTER_LINK_DETECTION;

  spin_unlock_irqrestore(&etdev->Lock, flags);

  netif_carrier_off(etdev->netdev);
 }
}
