
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int ** received_rate_histogram; int ** received_preamble_GI; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int rate; scalar_t__ bShortPreamble; scalar_t__ bICV; scalar_t__ bCRC; } ;
struct TYPE_4__ {scalar_t__ queue_id; } ;


 scalar_t__ CMPK_RX_QUEUE_ID ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 TYPE_2__* pRfd ;

__attribute__((used)) static void UpdateReceivedRateHistogramStatistics8190(
 struct net_device *dev,
 struct ieee80211_rx_stats* pstats
 )
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 u32 rcvType=1;
 u32 rateIndex;
 u32 preamble_guardinterval;






 if(pstats->bCRC)
  rcvType = 2;
 else if(pstats->bICV)
  rcvType = 3;

 if(pstats->bShortPreamble)
  preamble_guardinterval = 1;
 else
  preamble_guardinterval = 0;

 switch(pstats->rate)
 {



  case 152: rateIndex = 0; break;
      case 150: rateIndex = 1; break;
      case 146: rateIndex = 2; break;
      case 155: rateIndex = 3; break;



      case 145: rateIndex = 4; break;
      case 144: rateIndex = 5; break;
      case 154: rateIndex = 6; break;
      case 153: rateIndex = 7; break;
      case 151: rateIndex = 8; break;
      case 149: rateIndex = 9; break;
      case 148: rateIndex = 10; break;
      case 147: rateIndex = 11; break;



      case 143: rateIndex = 12; break;
      case 142: rateIndex = 13; break;
      case 135: rateIndex = 14; break;
      case 134: rateIndex = 15; break;
      case 133: rateIndex = 16; break;
      case 132: rateIndex = 17; break;
      case 131: rateIndex = 18; break;
      case 130: rateIndex = 19; break;
      case 129: rateIndex = 20; break;
      case 128: rateIndex = 21; break;
      case 141: rateIndex = 22; break;
      case 140: rateIndex = 23; break;
      case 139: rateIndex = 24; break;
      case 138: rateIndex = 25; break;
      case 137: rateIndex = 26; break;
      case 136: rateIndex = 27; break;
  default: rateIndex = 28; break;
 }
 priv->stats.received_preamble_GI[preamble_guardinterval][rateIndex]++;
 priv->stats.received_rate_histogram[0][rateIndex]++;
 priv->stats.received_rate_histogram[rcvType][rateIndex]++;
}
