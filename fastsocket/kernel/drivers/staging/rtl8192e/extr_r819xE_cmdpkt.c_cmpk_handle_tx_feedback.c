
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int txfeedback; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int TOK; int Fail_Reason; int TID; int Qos_Pkt; int Bandwidth; int Retry_Cnt; int Pkt_ID; int Seq_Num; int S_Rate; int F_Rate; int S_RTS_Rate; int F_RTS_Rate; int pkt_length; } ;
typedef TYPE_2__ cmpk_txfb_t ;
struct TYPE_9__ {scalar_t__ RegWirelessMode; } ;
struct TYPE_8__ {int CurrentOperaRate; int HTCurrentOperaRate; } ;


 scalar_t__ WIRELESS_MODE_A ;
 scalar_t__ WIRELESS_MODE_B ;
 scalar_t__ WIRELESS_MODE_G ;
 scalar_t__ WIRELESS_MODE_N_24G ;
 scalar_t__ WIRELESS_MODE_N_5G ;
 int cmpk_count_txstatistic (struct net_device*,TYPE_2__*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (int *,int *,int) ;
 TYPE_4__* pAdapter ;
 TYPE_3__* pMgntInfo ;
 int* pMsg ;

__attribute__((used)) static void
cmpk_handle_tx_feedback(
 struct net_device *dev,
 u8 * pmsg)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 cmpk_txfb_t rx_tx_fb;

 priv->stats.txfeedback++;
 memcpy((u8*)&rx_tx_fb, pmsg, sizeof(cmpk_txfb_t));

 cmpk_count_txstatistic(dev, &rx_tx_fb);
}
