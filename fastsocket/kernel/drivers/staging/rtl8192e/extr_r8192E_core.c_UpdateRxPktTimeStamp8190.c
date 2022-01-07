
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int LastRxDescTSFHigh; int LastRxDescTSFLow; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int * mac_time; int bFirstMPDU; scalar_t__ bIsAMPDU; } ;


 scalar_t__ ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void UpdateRxPktTimeStamp8190 (struct net_device *dev, struct ieee80211_rx_stats *stats)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);

 if(stats->bIsAMPDU && !stats->bFirstMPDU) {
  stats->mac_time[0] = priv->LastRxDescTSFLow;
  stats->mac_time[1] = priv->LastRxDescTSFHigh;
 } else {
  priv->LastRxDescTSFLow = stats->mac_time[0];
  priv->LastRxDescTSFHigh = stats->mac_time[1];
 }
}
