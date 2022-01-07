
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct wb35_reg {int U1BC_LEDConfigure; } ;
struct hw_data {int SoftwareSet; int LED_control; int LED_Blinking; scalar_t__ NullPacketCount; int time_count; TYPE_1__ LEDTimer; scalar_t__ LED_LinkOn; int TxByteCountLast; int RxByteCountLast; int LED_Scanning; scalar_t__ CurrentRadioHw; scalar_t__ CurrentRadioSw; scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;
struct wbsoft_priv {int TxByteCount; int RxByteCount; struct hw_data sHwData; } ;


 scalar_t__ DEFAULT_NULL_PACKET_COUNT ;
 int HAL_LED_SET_MASK ;
 int HAL_LED_SET_SHIFT ;
 int* LED_GRAY ;
 int* LED_GRAY2 ;
 int Wb35Reg_Write (struct hw_data*,int,int) ;
 int Wb35Tx_CurrentTime (struct wbsoft_priv*,int) ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void hal_led_control(unsigned long data)
{
 struct wbsoft_priv *adapter = (struct wbsoft_priv *)data;
 struct hw_data *pHwData = &adapter->sHwData;
 struct wb35_reg *reg = &pHwData->reg;
 u32 LEDSet = (pHwData->SoftwareSet & HAL_LED_SET_MASK) >> HAL_LED_SET_SHIFT;
 u32 TimeInterval = 500, ltmp, ltmp2;
 ltmp = 0;

 if (pHwData->SurpriseRemove)
  return;

 if (pHwData->LED_control) {
  ltmp2 = pHwData->LED_control & 0xff;
  if (ltmp2 == 5)
  {
   TimeInterval = 100;
   ltmp2 = (pHwData->LED_control >> 8) & 0xff;
   switch (ltmp2) {
   case 1:
    pHwData->LED_Blinking %= 3;
    ltmp = 0x1010;
    if (pHwData->LED_Blinking == 2)
     ltmp = 0;
    break;
   case 2:
    pHwData->LED_Blinking %= 2;
    ltmp = 0x0010;
    if (pHwData->LED_Blinking)
     ltmp = 0;
    break;
   case 3:
    pHwData->LED_Blinking %= 15;
    ltmp = 0x0010;
    if ((pHwData->LED_Blinking >= 9) || (pHwData->LED_Blinking % 2))
     ltmp = 0;
    break;
   case 4:
    ltmp = 0x1000;
    if (pHwData->LED_Blinking >= 3000)
     ltmp = 0;
    break;
   }
   pHwData->LED_Blinking++;

   reg->U1BC_LEDConfigure = ltmp;
   if (LEDSet != 7)
   {
    reg->U1BC_LEDConfigure |= (ltmp & 0xff) << 8;
    reg->U1BC_LEDConfigure |= (ltmp & 0xff00) >> 8;
   }
   Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
  }
 } else if (pHwData->CurrentRadioSw || pHwData->CurrentRadioHw)
 {
  if (reg->U1BC_LEDConfigure & 0x1010) {
   reg->U1BC_LEDConfigure &= ~0x1010;
   Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
  }
 } else {
  switch (LEDSet) {
  case 4:
   if (!pHwData->LED_LinkOn)
   {

    if (pHwData->LED_Scanning) {
     if (pHwData->LED_Blinking == 0) {
      reg->U1BC_LEDConfigure |= 0x10;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
      pHwData->LED_Blinking = 1;
      TimeInterval = 300;
     } else {
      reg->U1BC_LEDConfigure &= ~0x10;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
      pHwData->LED_Blinking = 0;
      TimeInterval = 300;
     }
    } else {

     if (reg->U1BC_LEDConfigure & 0x10) {
      reg->U1BC_LEDConfigure &= ~0x10;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
     }
    }
   } else {

    if ((reg->U1BC_LEDConfigure & 0x10) == 0) {
     reg->U1BC_LEDConfigure |= 0x10;
     Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
    }
   }
   break;

  case 6:
   if (!pHwData->LED_LinkOn)
   {

    if (pHwData->LED_Scanning) {
     if (pHwData->LED_Blinking == 0) {
      reg->U1BC_LEDConfigure &= ~0xf;
      reg->U1BC_LEDConfigure |= 0x10;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
      pHwData->LED_Blinking = 1;
      TimeInterval = 300;
     } else {
      reg->U1BC_LEDConfigure &= ~0x1f;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
      pHwData->LED_Blinking = 0;
      TimeInterval = 300;
     }
    } else {

     ltmp = reg->U1BC_LEDConfigure;
     reg->U1BC_LEDConfigure &= ~0x1f;
     if (LED_GRAY2[(pHwData->LED_Blinking % 30)]) {
      reg->U1BC_LEDConfigure |= 0x10;
      reg->U1BC_LEDConfigure |=
          LED_GRAY2[(pHwData->LED_Blinking % 30)];
     }
     pHwData->LED_Blinking++;
     if (reg->U1BC_LEDConfigure != ltmp)
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
     TimeInterval = 100;
    }
   } else {

    if ((reg->U1BC_LEDConfigure & 0x10) == 0) {
     reg->U1BC_LEDConfigure |= 0x10;
     Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
    }
   }
   break;

  case 5:
   if (!pHwData->LED_LinkOn)
   {

    if (pHwData->LED_Scanning) {
     if (pHwData->LED_Blinking == 0) {
      reg->U1BC_LEDConfigure |=
          0x1000;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
      pHwData->LED_Blinking = 1;
      TimeInterval = 300;
     } else {
      reg->U1BC_LEDConfigure &=
          ~0x1000;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
      pHwData->LED_Blinking = 0;
      TimeInterval = 300;
     }
    } else {

     if (reg->U1BC_LEDConfigure & 0x1000) {
      reg->U1BC_LEDConfigure &=
          ~0x1000;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
     }
    }
   } else {

    if ((adapter->RxByteCount !=
         pHwData->RxByteCountLast)
        || (adapter->TxByteCount !=
     pHwData->TxByteCountLast)) {
     if ((reg->U1BC_LEDConfigure & 0x3000) !=
         0x3000) {
      reg->U1BC_LEDConfigure |=
          0x3000;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
     }

     pHwData->RxByteCountLast =
         adapter->RxByteCount;
     pHwData->TxByteCountLast =
         adapter->TxByteCount;
     TimeInterval = 200;
    } else {

     if ((reg->U1BC_LEDConfigure & 0x3000) !=
         0x1000) {
      reg->U1BC_LEDConfigure &=
          ~0x3000;
      reg->U1BC_LEDConfigure |=
          0x1000;
      Wb35Reg_Write(pHwData, 0x03bc, reg->U1BC_LEDConfigure);
     }
    }
   }
   break;

  default:
   if ((reg->U1BC_LEDConfigure & 0x3000) != 0x3000) {
    reg->U1BC_LEDConfigure |= 0x3000;
    Wb35Reg_Write(pHwData, 0x03bc,
           reg->U1BC_LEDConfigure);
   }

   if (pHwData->LED_Blinking) {

    reg->U1BC_LEDConfigure &= ~0x0f;
    reg->U1BC_LEDConfigure |= 0x10;
    reg->U1BC_LEDConfigure |=
        LED_GRAY[(pHwData->LED_Blinking - 1) % 20];
    Wb35Reg_Write(pHwData, 0x03bc,
           reg->U1BC_LEDConfigure);

    pHwData->LED_Blinking += 2;
    if (pHwData->LED_Blinking < 40)
     TimeInterval = 100;
    else {
     pHwData->LED_Blinking = 0;
     reg->U1BC_LEDConfigure &= ~0x0f;
     Wb35Reg_Write(pHwData, 0x03bc,
            reg->U1BC_LEDConfigure);
    }
    break;
   }

   if (pHwData->LED_LinkOn) {
    if (!(reg->U1BC_LEDConfigure & 0x10))
    {

     reg->U1BC_LEDConfigure |= 0x10;
     pHwData->LED_Blinking = 1;
     TimeInterval = 50;
    }
   } else {
    if (reg->U1BC_LEDConfigure & 0x10)
    {
     reg->U1BC_LEDConfigure &= ~0x10;
     Wb35Reg_Write(pHwData, 0x03bc,
            reg->U1BC_LEDConfigure);
    }
   }
   break;
  }


  if (pHwData->LED_LinkOn) {
   pHwData->NullPacketCount += TimeInterval;
   if (pHwData->NullPacketCount >=
       DEFAULT_NULL_PACKET_COUNT) {
    pHwData->NullPacketCount = 0;
   }
  }
 }

 pHwData->time_count += TimeInterval;
 Wb35Tx_CurrentTime(adapter, pHwData->time_count);
 pHwData->LEDTimer.expires = jiffies + msecs_to_jiffies(TimeInterval);
 add_timer(&pHwData->LEDTimer);
}
