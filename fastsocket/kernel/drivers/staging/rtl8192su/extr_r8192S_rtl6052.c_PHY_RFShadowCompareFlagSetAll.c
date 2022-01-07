
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;


 int FALSE ;
 int PHY_RFShadowCompareFlagSet (struct net_device*,int ,scalar_t__,int ) ;
 scalar_t__ RF6052_MAX_PATH ;
 scalar_t__ RF6052_MAX_REG ;
 int TRUE ;

extern void PHY_RFShadowCompareFlagSetAll(struct net_device * dev)
{
 u32 eRFPath;
 u32 Offset;

 for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++)
 {
  for (Offset = 0; Offset <= RF6052_MAX_REG; Offset++)
  {

   if (Offset != 0x26 && Offset != 0x27)
    PHY_RFShadowCompareFlagSet(dev, (RF90_RADIO_PATH_E)eRFPath, Offset, FALSE);
   else
    PHY_RFShadowCompareFlagSet(dev, (RF90_RADIO_PATH_E)eRFPath, Offset, TRUE);
  }
 }

}
