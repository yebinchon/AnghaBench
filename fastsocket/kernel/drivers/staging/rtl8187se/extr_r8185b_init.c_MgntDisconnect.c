
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct r8180_priv {TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ iw_mode; } ;
struct TYPE_4__ {scalar_t__ mPss; int AwakeTimer; } ;


 int Adapter ;
 int Dot11d_Reset (TYPE_2__*) ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IS_DOT11D_ENABLE (TYPE_2__*) ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int MgntDisconnectAP (struct net_device*,int ) ;
 int MgntDisconnectIBSS (struct net_device*) ;
 int PlatformSetTimer (int ,int *,int ) ;
 scalar_t__ eAwake ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 TYPE_1__* pMgntInfo ;

bool
MgntDisconnect(
 struct net_device *dev,
 u8 asRsn
)
{
 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 if(IS_DOT11D_ENABLE(priv->ieee80211))
  Dot11d_Reset(priv->ieee80211);

 if( priv->ieee80211->state == IEEE80211_LINKED )
 {
  if( priv->ieee80211->iw_mode == IW_MODE_ADHOC )
  {


   MgntDisconnectIBSS(dev);
  }
  if( priv->ieee80211->iw_mode == IW_MODE_INFRA )
  {
   MgntDisconnectAP(dev, asRsn);
  }



 }

 return 1;
}
