
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_signal_power; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct ieee80211_rx_stats {int RecvSignalPower; } ;



__attribute__((used)) static void
rtl819x_update_rxsignalstatistics8190pci(
 struct r8192_priv * priv,
 struct ieee80211_rx_stats * pprevious_stats
 )
{
 int weighting = 0;




 if(priv->stats.recv_signal_power == 0)
  priv->stats.recv_signal_power = pprevious_stats->RecvSignalPower;



 if(pprevious_stats->RecvSignalPower > priv->stats.recv_signal_power)
  weighting = 5;
 else if(pprevious_stats->RecvSignalPower < priv->stats.recv_signal_power)
  weighting = (-5);




 priv->stats.recv_signal_power = (priv->stats.recv_signal_power * 5 + pprevious_stats->RecvSignalPower + weighting) / 6;
}
