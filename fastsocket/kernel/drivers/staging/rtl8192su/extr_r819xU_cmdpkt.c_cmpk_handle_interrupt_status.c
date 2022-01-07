
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int txbeaconerr; int txbeaconokint; } ;
struct r8192_priv {TYPE_2__ stats; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int length; int interrupt_status; } ;
typedef TYPE_3__ cmpk_intr_sta_t ;
struct TYPE_4__ {scalar_t__ iw_mode; int bibsscoordinator; } ;


 int DMESG (char*,...) ;
 int ISR_BcnTimerIntr ;
 int ISR_TxBcnErr ;
 int ISR_TxBcnOk ;
 scalar_t__ IW_MODE_ADHOC ;
 int cmdpkt_beacontimerinterrupt_819xusb (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void
cmpk_handle_interrupt_status(
 struct net_device *dev,
 u8* pmsg)
{
 cmpk_intr_sta_t rx_intr_status;
 struct r8192_priv *priv = ieee80211_priv(dev);

 DMESG("---> cmpk_Handle_Interrupt_Status()\n");
 rx_intr_status.length = pmsg[1];
 if (rx_intr_status.length != (sizeof(cmpk_intr_sta_t) - 2))
 {
  DMESG("cmpk_Handle_Interrupt_Status: wrong length!\n");
  return;
 }



 if( priv->ieee80211->iw_mode == IW_MODE_ADHOC)
 {

  rx_intr_status.interrupt_status = *((u32 *)(pmsg + 4));


  DMESG("interrupt status = 0x%x\n", rx_intr_status.interrupt_status);

  if (rx_intr_status.interrupt_status & ISR_TxBcnOk)
  {
   priv->ieee80211->bibsscoordinator = 1;
   priv->stats.txbeaconokint++;
  }
  else if (rx_intr_status.interrupt_status & ISR_TxBcnErr)
  {
   priv->ieee80211->bibsscoordinator = 0;
   priv->stats.txbeaconerr++;
  }

  if (rx_intr_status.interrupt_status & ISR_BcnTimerIntr)
  {
   cmdpkt_beacontimerinterrupt_819xusb(dev);
  }

 }




 DMESG("<---- cmpk_handle_interrupt_status()\n");

}
