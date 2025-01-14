
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ccmp_data {int key_idx; int key_set; int dot11RSNAStatsCCMPFormatErrors; int dot11RSNAStatsCCMPReplays; int dot11RSNAStatsCCMPDecryptErrors; int rx_pn; int tx_pn; } ;


 int MAC_ARG (int ) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static char * ieee80211_ccmp_print_stats(char *p, void *priv)
{
 struct ieee80211_ccmp_data *ccmp = priv;
 p += sprintf(p, "key[%d] alg=CCMP key_set=%d "
       "tx_pn=%02x%02x%02x%02x%02x%02x "
       "rx_pn=%02x%02x%02x%02x%02x%02x "
       "format_errors=%d replays=%d decrypt_errors=%d\n",
       ccmp->key_idx, ccmp->key_set,
       MAC_ARG(ccmp->tx_pn), MAC_ARG(ccmp->rx_pn),
       ccmp->dot11RSNAStatsCCMPFormatErrors,
       ccmp->dot11RSNAStatsCCMPReplays,
       ccmp->dot11RSNAStatsCCMPDecryptErrors);

 return p;
}
