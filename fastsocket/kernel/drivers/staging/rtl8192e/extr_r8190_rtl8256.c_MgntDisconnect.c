
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ mPss; scalar_t__ mActingAsAp; int AwakeTimer; } ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ iw_mode; } ;


 int AP_DisassociateAllStation (int ,int ) ;
 int Adapter ;
 int COMP_MLME ;
 int DBG_LOUD ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int MgntDisconnectAP (struct net_device*,int ) ;
 int MgntDisconnectIBSS (struct net_device*) ;
 int PlatformSetTimer (int ,int *,int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int TRUE ;
 scalar_t__ eAwake ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_2__* pMgntInfo ;
 int unspec_reason ;

__attribute__((used)) static bool
MgntDisconnect(
 struct net_device* dev,
 u8 asRsn
)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
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
