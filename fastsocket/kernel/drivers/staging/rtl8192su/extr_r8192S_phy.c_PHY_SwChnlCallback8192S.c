
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__ rf_chip; void* SwChnlInProgress; int SwChnlStep; int SwChnlStage; int chan; int up; } ;
struct net_device {int dummy; } ;


 int COMP_CH ;
 void* FALSE ;
 scalar_t__ RF_PSEUDO_11N ;
 int RT_TRACE (int ,char*,int ) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (scalar_t__) ;
 int phy_SwChnlStepByStep (struct net_device*,int ,int *,int *,scalar_t__*) ;

void PHY_SwChnlCallback8192S(struct net_device *dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 delay;


 RT_TRACE(COMP_CH, "==>SwChnlCallback8190Pci(), switch to channel %d\n", priv->chan);

 if(!priv->up)
  return;

 if(priv->rf_chip == RF_PSEUDO_11N)
 {
  priv->SwChnlInProgress=FALSE;
  return;
 }

 do{
  if(!priv->SwChnlInProgress)
   break;


  if(!phy_SwChnlStepByStep(dev, priv->chan, &priv->SwChnlStage, &priv->SwChnlStep, &delay))
  {
   if(delay>0)
   {
    mdelay(delay);




   }
   else
   continue;
  }
  else
  {
   priv->SwChnlInProgress=FALSE;
   break;
  }
 }while(1);
}
