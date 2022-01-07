
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8192_priv {int CurrentChannelBW; int rf_chip; int nCur40MhzPrimeSC; void* SetBWModeInProgress; int card_8192_version; int up; } ;
struct net_device {int dummy; } ;


 scalar_t__ BW_OPMODE ;
 int BW_OPMODE_20MHZ ;
 int COMP_DBG ;
 int COMP_SWBW ;
 void* FALSE ;


 int PHY_RF6052SetBandwidth (struct net_device*,int) ;





 scalar_t__ RRSR ;
 int RT_TRACE (int ,char*,...) ;
 int VERSION_8192S_BCUT ;
 int bCCKSideBand ;
 int bRFMOD ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;
 int rCCK0_System ;
 scalar_t__ rFPGA0_AnalogParameter2 ;
 int rFPGA0_RFMOD ;
 int rFPGA1_RFMOD ;
 int rOFDM1_LSTF ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

void PHY_SetBWModeCallback8192S(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 regBwOpMode;






 u8 regRRSR_RSC;

 RT_TRACE(COMP_SWBW, "==>SetBWModeCallback8190Pci()  Switch to %s bandwidth\n", priv->CurrentChannelBW == 134?"20MHz":"40MHz");


 if(priv->rf_chip == 128)
 {
  priv->SetBWModeInProgress= FALSE;
  return;
 }

 if(!priv->up)
  return;
 regBwOpMode = read_nic_byte(dev, BW_OPMODE);
 regRRSR_RSC = read_nic_byte(dev, RRSR+2);

 switch(priv->CurrentChannelBW)
 {
  case 134:



   regBwOpMode |= BW_OPMODE_20MHZ;

   write_nic_byte(dev, BW_OPMODE, regBwOpMode);
   break;

  case 133:



   regBwOpMode &= ~BW_OPMODE_20MHZ;

   write_nic_byte(dev, BW_OPMODE, regBwOpMode);
   regRRSR_RSC = (regRRSR_RSC&0x90) |(priv->nCur40MhzPrimeSC<<5);
   write_nic_byte(dev, RRSR+2, regRRSR_RSC);
   break;

  default:
   RT_TRACE(COMP_DBG, "SetBWModeCallback8190Pci():						unknown Bandwidth: %#X\n",priv->CurrentChannelBW);

   break;
 }




 switch(priv->CurrentChannelBW)
 {

  case 134:
   rtl8192_setBBreg(dev, rFPGA0_RFMOD, bRFMOD, 0x0);
   rtl8192_setBBreg(dev, rFPGA1_RFMOD, bRFMOD, 0x0);







   if (priv->card_8192_version >= VERSION_8192S_BCUT)
    write_nic_byte(dev, rFPGA0_AnalogParameter2, 0x58);


   break;


  case 133:
   rtl8192_setBBreg(dev, rFPGA0_RFMOD, bRFMOD, 0x1);
   rtl8192_setBBreg(dev, rFPGA1_RFMOD, bRFMOD, 0x1);







   rtl8192_setBBreg(dev, rCCK0_System, bCCKSideBand, (priv->nCur40MhzPrimeSC>>1));
   rtl8192_setBBreg(dev, rOFDM1_LSTF, 0xC00, priv->nCur40MhzPrimeSC);


   if (priv->card_8192_version >= VERSION_8192S_BCUT)
    write_nic_byte(dev, rFPGA0_AnalogParameter2, 0x18);

   break;

  default:
   RT_TRACE(COMP_DBG, "SetBWModeCallback8190Pci(): unknown Bandwidth: %#X\n" ,priv->CurrentChannelBW);

   break;

 }
 switch( priv->rf_chip )
 {
  case 131:

   break;

  case 130:


   break;

  case 129:


   break;

  case 128:

   break;

  case 132:
   PHY_RF6052SetBandwidth(dev, priv->CurrentChannelBW);
   break;
  default:
   printk("Unknown rf_chip: %d\n", priv->rf_chip);
   break;
 }

 priv->SetBWModeInProgress= FALSE;

 RT_TRACE(COMP_SWBW, "<==SetBWModeCallback8190Pci() \n" );
}
