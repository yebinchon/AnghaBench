
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {int SwChnlInProgress; int chan; int CurrentChannel; scalar_t__ up; scalar_t__ SwChnlStep; scalar_t__ SwChnlStage; TYPE_1__* ieee80211; scalar_t__ SetBWModeInProgress; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int COMP_ERR ;
 int COMP_SCAN ;
 int RT_TRACE (int ,char*) ;
 int SwChnlCallback8192SUsbWorkItem (struct net_device*) ;
 int TRUE ;





 scalar_t__ bResult ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int tmpchannel ;

u8 rtl8192_phy_SwChnl(struct net_device* dev, u8 channel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);



        if(!priv->up)
  return 0;

 if(priv->SwChnlInProgress)
  return 0;

 if(priv->SetBWModeInProgress)
  return 0;


 switch(priv->ieee80211->mode)
 {
 case 132:
 case 128:
  if (channel<=14){
   RT_TRACE(COMP_ERR, "WIRELESS_MODE_A but channel<=14");
   return 0;
  }
  break;

 case 131:
  if (channel>14){
   RT_TRACE(COMP_ERR, "WIRELESS_MODE_B but channel>14");
   return 0;
  }
  break;

 case 130:
 case 129:
  if (channel>14){
   RT_TRACE(COMP_ERR, "WIRELESS_MODE_G but channel>14");
   return 0;
  }
  break;

 default:
   ;
  break;
 }


 priv->SwChnlInProgress = TRUE;
 if( channel == 0)
  channel = 1;

 priv->chan=channel;

 priv->SwChnlStage=0;
 priv->SwChnlStep=0;

 if((priv->up))
 {
 SwChnlCallback8192SUsbWorkItem(dev);
 }
 else
 {
  RT_TRACE(COMP_SCAN, "PHY_SwChnl8192S SwChnlInProgress FALSE driver sleep or unload\n");
  priv->SwChnlInProgress = 0;

 }
        return 1;
}
