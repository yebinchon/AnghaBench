
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int bChangeBBInProgress; } ;
struct net_device {int dummy; } ;


 int COMP_RF ;
 int RT_TRACE (int ,char*,int,...) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int msleep (int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void
phy_SetUsbBBReg(struct net_device* dev,u32 RegAddr,u32 Data)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 BBWaitCounter = 0;

 RT_TRACE(COMP_RF, "phy_SetUsbBBReg(): RegAddr(%#x) <= %#x\n", RegAddr, Data);






 while(priv->bChangeBBInProgress)
 {
  BBWaitCounter ++;
  RT_TRACE(COMP_RF, "phy_SetUsbBBReg(): Wait 1 ms (%d times)...\n", BBWaitCounter);
  msleep(1);

  if((BBWaitCounter > 100))
  {
   RT_TRACE(COMP_RF, "phy_SetUsbBBReg(): (%d) Wait too logn to query BB!!\n", BBWaitCounter);
   return;
  }
 }

 priv->bChangeBBInProgress = 1;

 write_nic_dword(dev, RegAddr, Data);

 priv->bChangeBBInProgress = 0;
}
