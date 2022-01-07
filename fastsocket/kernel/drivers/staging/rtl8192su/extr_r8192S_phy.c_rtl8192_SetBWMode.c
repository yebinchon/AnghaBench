
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {void* CurrentChannelBW; scalar_t__ SetBWModeInProgress; scalar_t__ up; int nCur40MhzPrimeSC; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ HT_EXTCHNL_OFFSET ;
typedef void* HT_CHANNEL_WIDTH ;


 int COMP_SCAN ;
 scalar_t__ FALSE ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;
 int HAL_PRIME_CHNL_OFFSET_UPPER ;
 scalar_t__ HT_EXTCHNL_OFFSET_LOWER ;
 scalar_t__ HT_EXTCHNL_OFFSET_UPPER ;
 int RT_TRACE (int ,char*) ;
 int SetBWModeCallback8192SUsbWorkItem (struct net_device*) ;
 scalar_t__ TRUE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void rtl8192_SetBWMode(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth, HT_EXTCHNL_OFFSET Offset)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 HT_CHANNEL_WIDTH tmpBW = priv->CurrentChannelBW;
 if(priv->SetBWModeInProgress)
  return;

 priv->SetBWModeInProgress= TRUE;

 priv->CurrentChannelBW = Bandwidth;

 if(Offset==HT_EXTCHNL_OFFSET_LOWER)
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_UPPER;
 else if(Offset==HT_EXTCHNL_OFFSET_UPPER)
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_LOWER;
 else
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

 if((priv->up) )
 {
 SetBWModeCallback8192SUsbWorkItem(dev);
 }
 else
 {
  RT_TRACE(COMP_SCAN, "PHY_SetBWMode8192S() SetBWModeInProgress FALSE driver sleep or unload\n");
  priv->SetBWModeInProgress= FALSE;
  priv->CurrentChannelBW = tmpBW;
 }
}
