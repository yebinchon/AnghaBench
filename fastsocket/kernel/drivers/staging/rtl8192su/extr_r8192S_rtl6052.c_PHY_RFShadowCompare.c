
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int Compare; size_t Value; int ErrorOrNot; } ;
typedef size_t RF90_RADIO_PATH_E ;


 int COMP_INIT ;
 TYPE_1__** RF_Shadow ;
 int RT_TRACE (int ,char*,size_t,size_t,size_t) ;
 int bRFRegOffsetMask ;
 size_t rtl8192_phy_QueryRFReg (struct net_device*,size_t,size_t,int ) ;

extern void PHY_RFShadowCompare(
 struct net_device * dev,
 RF90_RADIO_PATH_E eRFPath,
 u32 Offset)
{
 u32 reg;


 if (RF_Shadow[eRFPath][Offset].Compare == 1)
 {
  reg = rtl8192_phy_QueryRFReg(dev, eRFPath, Offset, bRFRegOffsetMask);

  if (RF_Shadow[eRFPath][Offset].Value != reg)
  {

   RF_Shadow[eRFPath][Offset].ErrorOrNot = 1;
   RT_TRACE(COMP_INIT, "PHY_RFShadowCompare RF-%d Addr%02xErr = %05x", eRFPath, Offset, reg);
  }
 }

}
