
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8180_priv {TYPE_1__* ieee80211; } ;
struct TYPE_2__ {scalar_t__ iw_mode; int ps; } ;
typedef int RT_PS_MODE ;


 scalar_t__ IW_MODE_ADHOC ;

bool
MgntActSet_802_11_PowerSaveMode(
 struct r8180_priv *priv,
 RT_PS_MODE rtPsMode
)
{

 if(priv->ieee80211->iw_mode == IW_MODE_ADHOC)
  return 0;

 priv->ieee80211->ps = rtPsMode;

 return 1;
}
