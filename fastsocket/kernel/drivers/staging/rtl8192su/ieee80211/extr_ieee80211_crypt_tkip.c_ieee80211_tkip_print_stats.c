
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tkip_data {int key_idx; int key_set; int tx_iv32; int tx_iv16; int rx_iv32; int rx_iv16; int dot11RSNAStatsTKIPLocalMICFailures; int dot11RSNAStatsTKIPICVErrors; int dot11RSNAStatsTKIPReplays; } ;


 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int ,int ,int ) ;

__attribute__((used)) static char * ieee80211_tkip_print_stats(char *p, void *priv)
{
 struct ieee80211_tkip_data *tkip = priv;
 p += sprintf(p, "key[%d] alg=TKIP key_set=%d "
       "tx_pn=%02x%02x%02x%02x%02x%02x "
       "rx_pn=%02x%02x%02x%02x%02x%02x "
       "replays=%d icv_errors=%d local_mic_failures=%d\n",
       tkip->key_idx, tkip->key_set,
       (tkip->tx_iv32 >> 24) & 0xff,
       (tkip->tx_iv32 >> 16) & 0xff,
       (tkip->tx_iv32 >> 8) & 0xff,
       tkip->tx_iv32 & 0xff,
       (tkip->tx_iv16 >> 8) & 0xff,
       tkip->tx_iv16 & 0xff,
       (tkip->rx_iv32 >> 24) & 0xff,
       (tkip->rx_iv32 >> 16) & 0xff,
       (tkip->rx_iv32 >> 8) & 0xff,
       tkip->rx_iv32 & 0xff,
       (tkip->rx_iv16 >> 8) & 0xff,
       tkip->rx_iv16 & 0xff,
       tkip->dot11RSNAStatsTKIPReplays,
       tkip->dot11RSNAStatsTKIPICVErrors,
       tkip->dot11RSNAStatsTKIPLocalMICFailures);
 return p;
}
