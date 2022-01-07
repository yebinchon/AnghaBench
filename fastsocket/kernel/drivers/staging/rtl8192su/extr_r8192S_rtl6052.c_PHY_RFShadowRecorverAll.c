
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;


 int PHY_RFShadowRecorver (struct net_device*,int ,scalar_t__) ;
 scalar_t__ RF6052_MAX_PATH ;
 scalar_t__ RF6052_MAX_REG ;

extern void PHY_RFShadowRecorverAll(struct net_device * dev)
{
 u32 eRFPath;
 u32 Offset;

 for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++)
 {
  for (Offset = 0; Offset <= RF6052_MAX_REG; Offset++)
  {
   PHY_RFShadowRecorver(dev, (RF90_RADIO_PATH_E)eRFPath, Offset);
  }
 }

}
