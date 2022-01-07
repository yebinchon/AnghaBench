
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ value; } ;
struct et131x_adapter {int* eepromData; int AiForceSpeed; int AiForceDpx; scalar_t__ RegistryFlowControl; TYPE_1__ Bmsr; } ;
struct TYPE_8__ {int int_en; int link_status; int autoneg_status; int led_tx_rx; int led_link; } ;
struct TYPE_9__ {int value; TYPE_2__ bits; } ;
typedef TYPE_3__ MI_LCR2_t ;
typedef TYPE_3__ MI_ISR_t ;
typedef TYPE_3__ MI_IMR_t ;


 scalar_t__ Both ;
 int ET1310_PhyAccessMiBit (struct et131x_adapter*,int ,int,int,int *) ;
 int ET1310_PhyAutoNeg (struct et131x_adapter*,int) ;
 int MI_REGS_t ;
 int MiRead (struct et131x_adapter*,int ,int *) ;
 int MiWrite (struct et131x_adapter*,int ,int ) ;
 int TPAL_SetPhy1000FullDuplex (struct et131x_adapter*) ;
 int TPAL_SetPhy100Force (struct et131x_adapter*) ;
 int TPAL_SetPhy100FullDuplex (struct et131x_adapter*) ;
 int TPAL_SetPhy100HalfDuplex (struct et131x_adapter*) ;
 int TPAL_SetPhy10Force (struct et131x_adapter*) ;
 int TPAL_SetPhy10FullDuplex (struct et131x_adapter*) ;
 int TPAL_SetPhy10HalfDuplex (struct et131x_adapter*) ;
 int TRUEPHY_BIT_CLEAR ;
 int TRUEPHY_BIT_SET ;
 scalar_t__ TxOnly ;
 scalar_t__ offsetof (int ,TYPE_3__) ;

__attribute__((used)) static int et131x_xcvr_init(struct et131x_adapter *adapter)
{
 int status = 0;
 MI_IMR_t imr;
 MI_ISR_t isr;
 MI_LCR2_t lcr2;


 adapter->Bmsr.value = 0;

 MiRead(adapter, (uint8_t) offsetof(MI_REGS_t, isr), &isr.value);

 MiRead(adapter, (uint8_t) offsetof(MI_REGS_t, imr), &imr.value);




 imr.bits.int_en = 0x1;
 imr.bits.link_status = 0x1;
 imr.bits.autoneg_status = 0x1;

 MiWrite(adapter, (uint8_t) offsetof(MI_REGS_t, imr), imr.value);
 if ((adapter->eepromData[1] & 0x4) == 0) {
  MiRead(adapter, (uint8_t) offsetof(MI_REGS_t, lcr2),
         &lcr2.value);
  if ((adapter->eepromData[1] & 0x8) == 0)
   lcr2.bits.led_tx_rx = 0x3;
  else
   lcr2.bits.led_tx_rx = 0x4;
  lcr2.bits.led_link = 0xa;
  MiWrite(adapter, (uint8_t) offsetof(MI_REGS_t, lcr2),
   lcr2.value);
 }


 if (adapter->AiForceSpeed == 0 && adapter->AiForceDpx == 0) {
  if ((adapter->RegistryFlowControl == TxOnly) ||
      (adapter->RegistryFlowControl == Both)) {
   ET1310_PhyAccessMiBit(adapter,
           TRUEPHY_BIT_SET, 4, 11, ((void*)0));
  } else {
   ET1310_PhyAccessMiBit(adapter,
           TRUEPHY_BIT_CLEAR, 4, 11, ((void*)0));
  }

  if (adapter->RegistryFlowControl == Both) {
   ET1310_PhyAccessMiBit(adapter,
           TRUEPHY_BIT_SET, 4, 10, ((void*)0));
  } else {
   ET1310_PhyAccessMiBit(adapter,
           TRUEPHY_BIT_CLEAR, 4, 10, ((void*)0));
  }


  ET1310_PhyAutoNeg(adapter, 1);


  ET1310_PhyAccessMiBit(adapter, TRUEPHY_BIT_SET, 0, 9, ((void*)0));
  return status;
 } else {
  ET1310_PhyAutoNeg(adapter, 0);


  if (adapter->AiForceDpx != 1) {
   if ((adapter->RegistryFlowControl == TxOnly) ||
       (adapter->RegistryFlowControl == Both)) {
    ET1310_PhyAccessMiBit(adapter,
            TRUEPHY_BIT_SET, 4, 11,
            ((void*)0));
   } else {
    ET1310_PhyAccessMiBit(adapter,
            TRUEPHY_BIT_CLEAR, 4, 11,
            ((void*)0));
   }

   if (adapter->RegistryFlowControl == Both) {
    ET1310_PhyAccessMiBit(adapter,
            TRUEPHY_BIT_SET, 4, 10,
            ((void*)0));
   } else {
    ET1310_PhyAccessMiBit(adapter,
            TRUEPHY_BIT_CLEAR, 4, 10,
            ((void*)0));
   }
  } else {
   ET1310_PhyAccessMiBit(adapter,
           TRUEPHY_BIT_CLEAR, 4, 10, ((void*)0));
   ET1310_PhyAccessMiBit(adapter,
           TRUEPHY_BIT_CLEAR, 4, 11, ((void*)0));
  }

  switch (adapter->AiForceSpeed) {
  case 10:
   if (adapter->AiForceDpx == 1)
    TPAL_SetPhy10HalfDuplex(adapter);
   else if (adapter->AiForceDpx == 2)
    TPAL_SetPhy10FullDuplex(adapter);
   else
    TPAL_SetPhy10Force(adapter);
   break;
  case 100:
   if (adapter->AiForceDpx == 1)
    TPAL_SetPhy100HalfDuplex(adapter);
   else if (adapter->AiForceDpx == 2)
    TPAL_SetPhy100FullDuplex(adapter);
   else
    TPAL_SetPhy100Force(adapter);
   break;
  case 1000:
   TPAL_SetPhy1000FullDuplex(adapter);
   break;
  }

  return status;
 }
}
