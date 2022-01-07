
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct r8192_priv {scalar_t__ NumTotalRFPath; } ;
struct net_device {int dummy; } ;
typedef int HT_CHANNEL_WIDTH ;


 int COMP_DBG ;


 int RT_TRACE (int ,char*,...) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void PHY_SetRF8225Bandwidth(struct net_device* dev ,HT_CHANNEL_WIDTH Bandwidth)
{
 u8 eRFPath;
 struct r8192_priv *priv = ieee80211_priv(dev);


 for(eRFPath = 0; eRFPath <priv->NumTotalRFPath; eRFPath++)
 {
  switch(Bandwidth)
  {
   case 129:

    break;
   case 128:
    RT_TRACE(COMP_DBG, "SetChannelBandwidth8190Pci():8225 does not support 40M mode\n");
    break;
   default:
    RT_TRACE(COMP_DBG, "PHY_SetRF8225Bandwidth(): unknown Bandwidth: %#X\n",Bandwidth );
    break;

  }
 }

}
