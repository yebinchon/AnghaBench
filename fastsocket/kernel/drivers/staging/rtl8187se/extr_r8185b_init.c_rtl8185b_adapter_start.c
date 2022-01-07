
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8180_priv {scalar_t__ bInactivePs; scalar_t__ RfOffReason; int eRFPowerState; scalar_t__ dma_poll_stop_mask; scalar_t__ dma_poll_mask; struct ieee80211_device* ieee80211; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct ieee80211_device {int mode; } ;
typedef int WIRELESS_MODE ;
struct TYPE_4__ {scalar_t__ RegRfOff; } ;
struct TYPE_5__ {TYPE_1__ MgntInfo; } ;


 int ANAPARAM ;
 int ANAPARAM2 ;
 int ANAPARAM3 ;
 int ANAPARM2_ASIC_ON ;
 int ANAPARM_ASIC_ON ;
 int ActSetWirelessMode8185 (struct net_device*,int) ;
 TYPE_2__* Adapter ;
 int AtimWnd ;
 int BIT0 ;
 int BIT3 ;
 int BIT5 ;
 int BIT6 ;
 int BcnItv ;
 int CONFIG3 ;
 int CONFIG3_PARM_En ;
 int CONFIG5 ;
 int CR9346 ;
 int DMESGW (char*,int) ;
 int FEMR ;
 int GetSupportedWirelessMode8185 (struct net_device*) ;
 int HwConfigureRTL8185 (struct net_device*) ;
 int MAC0 ;
 int MAC4 ;
 int MSR ;
 int MacConfig_85BASIC (struct net_device*) ;
 int MgntActSet_RF_State (struct net_device*,int ,int ) ;
 int PSR ;
 int PhyConfig8185 (struct net_device*) ;
 int PlatformIOWrite2Byte (struct net_device*,int ,int) ;
 int RFPinsOutput ;
 int RFPinsSelect ;
 int RFSW_CTRL ;
 int RF_CHANGE_BY_IPS ;
 int RF_OFF ;
 int RF_ON ;
 int SetOutputEnableOfRfPins (struct net_device*) ;
 int SetRFPowerState8185 (TYPE_2__*,int ) ;
 scalar_t__ TRUE ;
 int WIRELESS_MODE_A ;
 int WIRELESS_MODE_AUTO ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 int WPA_CONFIG ;
 int eRfOff ;
 int eRfOn ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int read_nic_byte (struct net_device*,int) ;
 int rtl8180_reset (struct net_device*) ;
 int rtl8185b_irq_enable (struct net_device*) ;
 int write_nic_byte (struct net_device*,int,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;
 int write_nic_word (struct net_device*,int ,int) ;

void rtl8185b_adapter_start(struct net_device *dev)
{
      struct r8180_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;

 u8 SupportedWirelessMode;
 u8 InitWirelessMode;
 u8 bInvalidWirelessMode = 0;

 u8 tmpu8;

 u8 btCR9346;
 u8 TmpU1b;
 u8 btPSR;



 write_nic_byte(dev,0x24e, (BIT5|BIT6|BIT0));

 rtl8180_reset(dev);

 priv->dma_poll_mask = 0;
 priv->dma_poll_stop_mask = 0;



 HwConfigureRTL8185(dev);

 write_nic_dword(dev, MAC0, ((u32*)dev->dev_addr)[0]);
 write_nic_word(dev, MAC4, ((u32*)dev->dev_addr)[1] & 0xffff );

 write_nic_byte(dev, MSR, read_nic_byte(dev, MSR) & 0xf3);



 write_nic_word(dev, BcnItv, 100);
 write_nic_word(dev, AtimWnd, 2);


 PlatformIOWrite2Byte(dev, FEMR, 0xFFFF);

 write_nic_byte(dev, WPA_CONFIG, 0);

 MacConfig_85BASIC(dev);



 PlatformIOWrite2Byte(dev, RFSW_CTRL, 0x569a);
 write_nic_byte(dev, CR9346, 0xc0);

 tmpu8 = read_nic_byte(dev, CONFIG3);
 write_nic_byte(dev, CONFIG3, (tmpu8 |CONFIG3_PARM_En) );



 write_nic_dword(dev, ANAPARAM2, ANAPARM2_ASIC_ON);
 write_nic_dword(dev, ANAPARAM, ANAPARM_ASIC_ON);

 write_nic_word(dev, ANAPARAM3, 0x0010);


 write_nic_byte(dev, CONFIG3, tmpu8);
 write_nic_byte(dev, CR9346, 0x00);


 btCR9346 = read_nic_byte(dev, CR9346);
 write_nic_byte(dev, CR9346, (btCR9346|0xC0) );


 TmpU1b = read_nic_byte(dev, CONFIG5);
 TmpU1b = TmpU1b & ~BIT3;
 write_nic_byte(dev,CONFIG5, TmpU1b);


 btCR9346 &= ~(0xC0);
 write_nic_byte(dev, CR9346, btCR9346);



 btPSR = read_nic_byte(dev, PSR);
 write_nic_byte(dev, PSR, (btPSR | BIT3));


 write_nic_word(dev, RFPinsOutput, 0x0480);
 SetOutputEnableOfRfPins(dev);
 write_nic_word(dev, RFPinsSelect, 0x2488);


 PhyConfig8185(dev);




 SupportedWirelessMode = GetSupportedWirelessMode8185(dev);
 if( (ieee->mode != WIRELESS_MODE_B) &&
  (ieee->mode != WIRELESS_MODE_G) &&
  (ieee->mode != WIRELESS_MODE_A) &&
  (ieee->mode != WIRELESS_MODE_AUTO))
 {
  bInvalidWirelessMode = 1;
 }
 else
 {

  if( (ieee->mode != WIRELESS_MODE_AUTO) &&
   (ieee->mode & SupportedWirelessMode) == 0 )
  {
   bInvalidWirelessMode = 1;
  }
 }

 if(bInvalidWirelessMode || ieee->mode==WIRELESS_MODE_AUTO)
 {

  if((SupportedWirelessMode & WIRELESS_MODE_A))
  {
   InitWirelessMode = WIRELESS_MODE_A;
  }
  else if((SupportedWirelessMode & WIRELESS_MODE_G))
  {
   InitWirelessMode = WIRELESS_MODE_G;
  }
  else if((SupportedWirelessMode & WIRELESS_MODE_B))
  {
   InitWirelessMode = WIRELESS_MODE_B;
  }
  else
  {
   DMESGW("InitializeAdapter8185(): No valid wireless mode supported, SupportedWirelessMode(%x)!!!\n",
     SupportedWirelessMode);
   InitWirelessMode = WIRELESS_MODE_B;
  }


  if(bInvalidWirelessMode)
  {
   ieee->mode = (WIRELESS_MODE)InitWirelessMode;
  }
 }
 else
 {
  InitWirelessMode = ieee->mode;
 }


 priv->eRFPowerState = eRfOff;
 priv->RfOffReason = 0;
 {


  MgntActSet_RF_State(dev, eRfOn, 0);


 }





 if (priv->bInactivePs)
 {


  MgntActSet_RF_State(dev,eRfOff, RF_CHANGE_BY_IPS);



 }
 ActSetWirelessMode8185(dev, (u8)(InitWirelessMode));



 rtl8185b_irq_enable(dev);

 netif_start_queue(dev);

 }
