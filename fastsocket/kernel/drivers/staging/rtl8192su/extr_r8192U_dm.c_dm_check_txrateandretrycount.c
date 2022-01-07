
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int txretrycount; void* last_packet_rate; void* CurrentShowTxate; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;


 int Initial_Tx_Rate_Reg ;
 int TX_RATE_REG ;
 int Tx_Retry_Count_Reg ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 void* read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,int ) ;

__attribute__((used)) static void dm_check_txrateandretrycount(struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device* ieee = priv->ieee80211;


 ieee->softmac_stats.CurrentShowTxate = read_nic_byte(dev, TX_RATE_REG);



 ieee->softmac_stats.last_packet_rate = read_nic_byte(dev ,Initial_Tx_Rate_Reg);


 ieee->softmac_stats.txretrycount = read_nic_dword(dev, Tx_Retry_Count_Reg);
}
