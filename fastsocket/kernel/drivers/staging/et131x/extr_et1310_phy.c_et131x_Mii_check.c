
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int TransPhyComaModeOnBoot; } ;
struct et131x_adapter {scalar_t__ MediaState; int Flags; int RegistryPhyLoopbk; scalar_t__ linkspeed; int RegistryPhyComa; int AiForceDpx; int RegistryJumboPacket; TYPE_3__ PoMgmt; void* duplex_mode; int netdev; int Lock; TYPE_1__* pdev; } ;
struct TYPE_8__ {scalar_t__ auto_neg_complete; scalar_t__ link_status; } ;
struct TYPE_10__ {TYPE_2__ bits; } ;
struct TYPE_7__ {int dev; } ;
typedef TYPE_4__ MI_BMSR_t ;


 int ConfigFlowControl (struct et131x_adapter*) ;
 int ConfigMACRegs2 (struct et131x_adapter*) ;
 int ET1310_PhyAndOrReg (struct et131x_adapter*,int,int,int) ;
 int ET1310_PhyLinkStatus (struct et131x_adapter*,int *,void**,void**,void**,void**,void**,void**) ;
 int EnablePhyComa (struct et131x_adapter*) ;
 int MiRead (struct et131x_adapter*,int,int*) ;
 int MiWrite (struct et131x_adapter*,int,int) ;
 scalar_t__ NETIF_STATUS_MEDIA_CONNECT ;
 scalar_t__ NETIF_STATUS_MEDIA_DISCONNECT ;
 int SetRxDmaTimer (struct et131x_adapter*) ;
 scalar_t__ TRUEPHY_SPEED_1000MBPS ;
 scalar_t__ TRUEPHY_SPEED_10MBPS ;
 int dev_warn (int *,char*) ;
 int et131x_adapter_setup (struct et131x_adapter*) ;
 int et131x_free_busy_send_packets (struct et131x_adapter*) ;
 int et131x_init_send (struct et131x_adapter*) ;
 int et131x_reset_recv (struct et131x_adapter*) ;
 int et131x_soft_reset (struct et131x_adapter*) ;
 int fMP_ADAPTER_LINK_DETECTION ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void et131x_Mii_check(struct et131x_adapter *etdev,
        MI_BMSR_t bmsr, MI_BMSR_t bmsr_ints)
{
 uint8_t link_status;
 uint32_t autoneg_status;
 uint32_t speed;
 uint32_t duplex;
 uint32_t mdi_mdix;
 uint32_t masterslave;
 uint32_t polarity;
 unsigned long flags;

 if (bmsr_ints.bits.link_status) {
  if (bmsr.bits.link_status) {
   etdev->PoMgmt.TransPhyComaModeOnBoot = 20;




   spin_lock_irqsave(&etdev->Lock, flags);

   etdev->MediaState = NETIF_STATUS_MEDIA_CONNECT;
   etdev->Flags &= ~fMP_ADAPTER_LINK_DETECTION;

   spin_unlock_irqrestore(&etdev->Lock, flags);


   if (etdev->RegistryPhyLoopbk == 0)
    netif_carrier_on(etdev->netdev);
  } else {
   dev_warn(&etdev->pdev->dev,
       "Link down - cable problem ?\n");

   if (etdev->linkspeed == TRUEPHY_SPEED_10MBPS) {




    uint16_t Register18;

    MiRead(etdev, 0x12, &Register18);
    MiWrite(etdev, 0x12, Register18 | 0x4);
    MiWrite(etdev, 0x10, Register18 | 0x8402);
    MiWrite(etdev, 0x11, Register18 | 511);
    MiWrite(etdev, 0x12, Register18);
   }







   if (!(etdev->Flags & fMP_ADAPTER_LINK_DETECTION) ||
     (etdev->MediaState == NETIF_STATUS_MEDIA_DISCONNECT)) {
    spin_lock_irqsave(&etdev->Lock, flags);
    etdev->MediaState =
        NETIF_STATUS_MEDIA_DISCONNECT;
    spin_unlock_irqrestore(&etdev->Lock,
             flags);




    if (etdev->RegistryPhyLoopbk == 0)
     netif_carrier_off(etdev->netdev);
   }

   etdev->linkspeed = 0;
   etdev->duplex_mode = 0;


   et131x_free_busy_send_packets(etdev);


   et131x_init_send(etdev);


   et131x_reset_recv(etdev);







   et131x_soft_reset(etdev);


   et131x_adapter_setup(etdev);




   if (etdev->RegistryPhyComa == 1)
    EnablePhyComa(etdev);
  }
 }

 if (bmsr_ints.bits.auto_neg_complete ||
     (etdev->AiForceDpx == 3 && bmsr_ints.bits.link_status)) {
  if (bmsr.bits.auto_neg_complete || etdev->AiForceDpx == 3) {
   ET1310_PhyLinkStatus(etdev,
          &link_status, &autoneg_status,
          &speed, &duplex, &mdi_mdix,
          &masterslave, &polarity);

   etdev->linkspeed = speed;
   etdev->duplex_mode = duplex;

   etdev->PoMgmt.TransPhyComaModeOnBoot = 20;

   if (etdev->linkspeed == TRUEPHY_SPEED_10MBPS) {





    uint16_t Register18;

    MiRead(etdev, 0x12, &Register18);
    MiWrite(etdev, 0x12, Register18 | 0x4);
    MiWrite(etdev, 0x10, Register18 | 0x8402);
    MiWrite(etdev, 0x11, Register18 | 511);
    MiWrite(etdev, 0x12, Register18);
   }

   ConfigFlowControl(etdev);

   if (etdev->linkspeed == TRUEPHY_SPEED_1000MBPS &&
     etdev->RegistryJumboPacket > 2048)
    ET1310_PhyAndOrReg(etdev, 0x16, 0xcfff,
           0x2000);

   SetRxDmaTimer(etdev);
   ConfigMACRegs2(etdev);
  }
 }
}
