
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct r8192_priv {scalar_t__ CurrentFwCmdIO; scalar_t__ SetFwCmdInProgress; scalar_t__ bInHctTest; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ FW_CMD_IO_TYPE ;


 int COMP_CMD ;
 int COMP_ERR ;
 scalar_t__ FW_CMD_DIG_HALT ;
 scalar_t__ FW_CMD_DIG_RESUME ;
 int RT_TRACE (int ,char*,...) ;
 scalar_t__ TRUE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_SetFwCmdIOCallback (struct net_device*) ;
 int udelay (int) ;

bool HalSetFwCmd8192S(struct net_device* dev, FW_CMD_IO_TYPE FwCmdIO)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u16 FwCmdWaitCounter = 0;

 u16 FwCmdWaitLimit = 1000;


 if(priv->bInHctTest)
  return 1;

 RT_TRACE(COMP_CMD, "-->HalSetFwCmd8192S(): Set FW Cmd(%x), SetFwCmdInProgress(%d)\n", (u32)FwCmdIO, priv->SetFwCmdInProgress);


 if(FwCmdIO==FW_CMD_DIG_HALT || FwCmdIO==FW_CMD_DIG_RESUME)
 {
  RT_TRACE(COMP_CMD, "<--HalSetFwCmd8192S(): Set FW Cmd(%x)\n", (u32)FwCmdIO);
  return 0;
 }


 while(priv->SetFwCmdInProgress && FwCmdWaitCounter<FwCmdWaitLimit)
 {






  RT_TRACE(COMP_CMD, "HalSetFwCmd8192S(): previous workitem not finish!!\n");
  return 0;
  FwCmdWaitCounter ++;
  RT_TRACE(COMP_CMD, "HalSetFwCmd8192S(): Wait 10 ms (%d times)...\n", FwCmdWaitCounter);
  udelay(100);
 }

 if(FwCmdWaitCounter == FwCmdWaitLimit)
 {

  RT_TRACE(COMP_CMD, "HalSetFwCmd8192S(): Wait too logn to set FW CMD\n");

 }

 if (priv->SetFwCmdInProgress)
 {
  RT_TRACE(COMP_ERR, "<--HalSetFwCmd8192S(): Set FW Cmd(%#x)\n", FwCmdIO);
  return 0;
 }
 priv->SetFwCmdInProgress = TRUE;
 priv->CurrentFwCmdIO = FwCmdIO;

 phy_SetFwCmdIOCallback(dev);
 return 1;
}
