
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ErrorOrNot; int Recorver; int Value; } ;
typedef size_t RF90_RADIO_PATH_E ;


 int COMP_INIT ;
 TYPE_1__** RF_Shadow ;
 int RT_TRACE (int ,char*,size_t,size_t,int ) ;
 int bRFRegOffsetMask ;
 int rtl8192_phy_SetRFReg (struct net_device*,size_t,size_t,int ,int ) ;

extern void PHY_RFShadowRecorver(
 struct net_device * dev,
 RF90_RADIO_PATH_E eRFPath,
 u32 Offset)
{

 if (RF_Shadow[eRFPath][Offset].ErrorOrNot == 1)
 {

  if (RF_Shadow[eRFPath][Offset].Recorver == 1)
  {
   rtl8192_phy_SetRFReg(dev, eRFPath, Offset, bRFRegOffsetMask, RF_Shadow[eRFPath][Offset].Value);
   RT_TRACE(COMP_INIT, "PHY_RFShadowRecorver RF-%d Addr%02x=%05x",
   eRFPath, Offset, RF_Shadow[eRFPath][Offset].Value);
  }
 }

}
