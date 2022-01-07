
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {TYPE_1__* ieee80211; scalar_t__ bLeisurePs; } ;
struct TYPE_2__ {scalar_t__ ps; } ;


 scalar_t__ IEEE80211_PS_DISABLED ;
 int IEEE80211_PS_MBCAST ;
 int IEEE80211_PS_UNICAST ;
 int MgntActSet_802_11_PowerSaveMode (struct r8180_priv*,int) ;

void LeisurePSEnter(struct r8180_priv *priv)
{
 if (priv->bLeisurePs) {
  if (priv->ieee80211->ps == IEEE80211_PS_DISABLED)
   MgntActSet_802_11_PowerSaveMode(priv, IEEE80211_PS_MBCAST|IEEE80211_PS_UNICAST);
 }
}
