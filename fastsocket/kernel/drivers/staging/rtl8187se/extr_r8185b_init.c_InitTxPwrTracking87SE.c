
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int PWR_METER_EN ;
 int RF_ReadReg (struct net_device*,int) ;
 int RF_WriteReg (struct net_device*,int,int) ;
 int mdelay (int) ;

void
InitTxPwrTracking87SE(
 struct net_device *dev
)
{

 u32 u4bRfReg;

 u4bRfReg = RF_ReadReg(dev, 0x02);



 RF_WriteReg(dev, 0x02, u4bRfReg|PWR_METER_EN); mdelay(1);
}
