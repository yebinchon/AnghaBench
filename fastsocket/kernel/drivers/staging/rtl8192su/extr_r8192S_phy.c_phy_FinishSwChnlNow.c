
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {int up; int SwChnlStep; int SwChnlStage; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (scalar_t__) ;
 int phy_SwChnlStepByStep (struct net_device*,int ,int *,int *,scalar_t__*) ;

__attribute__((used)) static void
phy_FinishSwChnlNow(
 struct net_device* dev,
 u8 channel
  )
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 delay;

 while(!phy_SwChnlStepByStep(dev,channel,&priv->SwChnlStage,&priv->SwChnlStep,&delay))
 {
  if(delay>0)
   mdelay(delay);
  if(!priv->up)
   break;
 }
}
