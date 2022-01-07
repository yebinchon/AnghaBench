
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;
typedef int HT_CHANNEL_WIDTH ;


 int BIT10 ;
 int BIT11 ;
 int COMP_DBG ;


 int RF90_PATH_A ;
 int RF_CHNLBW ;
 int RT_TRACE (int ,char*,int) ;
 int rtl8192_phy_SetRFReg (struct net_device*,int ,int ,int,int) ;

void PHY_RF6052SetBandwidth(struct net_device* dev, HT_CHANNEL_WIDTH Bandwidth)
{





 {
  switch(Bandwidth)
  {
   case 129:



    rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)RF90_PATH_A, RF_CHNLBW, BIT10|BIT11, 0x01);
    break;
   case 128:



    rtl8192_phy_SetRFReg(dev, (RF90_RADIO_PATH_E)RF90_PATH_A, RF_CHNLBW, BIT10|BIT11, 0x00);
    break;
   default:
    RT_TRACE(COMP_DBG, "PHY_SetRF6052Bandwidth(): unknown Bandwidth: %#X\n",Bandwidth);
    break;
  }
 }

}
