
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int SetBWModeInProgress; int nCur40MhzPrimeSC; int CurrentChannelBW; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int atm_swbw; } ;
typedef scalar_t__ HT_EXTCHNL_OFFSET ;
typedef int HT_CHANNEL_WIDTH ;


 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;
 int HAL_PRIME_CHNL_OFFSET_UPPER ;
 scalar_t__ HT_EXTCHNL_OFFSET_LOWER ;
 scalar_t__ HT_EXTCHNL_OFFSET_UPPER ;
 int atomic_inc (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_SetBWModeWorkItem (struct net_device*) ;

void rtl8192_SetBWMode(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth, HT_EXTCHNL_OFFSET Offset)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 if(priv->SetBWModeInProgress)
  return;

  atomic_inc(&(priv->ieee80211->atm_swbw));
 priv->SetBWModeInProgress= 1;

 priv->CurrentChannelBW = Bandwidth;

 if(Offset==HT_EXTCHNL_OFFSET_LOWER)
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_UPPER;
 else if(Offset==HT_EXTCHNL_OFFSET_UPPER)
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_LOWER;
 else
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_DONT_CARE;



 rtl8192_SetBWModeWorkItem(dev);

}
