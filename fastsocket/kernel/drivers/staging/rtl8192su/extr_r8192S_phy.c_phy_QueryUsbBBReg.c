
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int bChangeBBInProgress; } ;
struct net_device {int dummy; } ;


 int COMP_RF ;
 int HST_RDBUSY ;
 int PHY_REG ;
 int PHY_REG_DATA ;
 int RT_TRACE (int ,char*,int,...) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int msleep (int) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,int) ;

u32 phy_QueryUsbBBReg(struct net_device* dev, u32 RegAddr)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 ReturnValue = 0xffffffff;
 u8 PollingCnt = 50;
 u8 BBWaitCounter = 0;







 while(priv->bChangeBBInProgress)
 {
  BBWaitCounter ++;
  RT_TRACE(COMP_RF, "phy_QueryUsbBBReg(): Wait 1 ms (%d times)...\n", BBWaitCounter);
  msleep(1);


  if((BBWaitCounter > 100) )
  {
   RT_TRACE(COMP_RF, "phy_QueryUsbBBReg(): (%d) Wait too logn to query BB!!\n", BBWaitCounter);
   return ReturnValue;
  }
 }

 priv->bChangeBBInProgress = 1;

 read_nic_dword(dev, RegAddr);

 do
 {
  if((read_nic_byte(dev, PHY_REG)&HST_RDBUSY) == 0)
   break;
 }while( --PollingCnt );

 if(PollingCnt == 0)
 {
  RT_TRACE(COMP_RF, "Fail!!!phy_QueryUsbBBReg(): RegAddr(%#x) = %#x\n", RegAddr, ReturnValue);
 }
 else
 {

  ReturnValue = read_nic_dword(dev, PHY_REG_DATA);
  RT_TRACE(COMP_RF, "phy_QueryUsbBBReg(): RegAddr(%#x) = %#x, PollingCnt(%d)\n", RegAddr, ReturnValue, PollingCnt);
 }

 priv->bChangeBBInProgress = 0;

 return ReturnValue;
}
