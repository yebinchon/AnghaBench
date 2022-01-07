
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_stats {int bFirstMPDU; int bIsAMPDU; } ;



__attribute__((used)) static void
rtl8192_record_rxdesc_forlateruse(
 struct ieee80211_rx_stats * psrc_stats,
 struct ieee80211_rx_stats * ptarget_stats
)
{
 ptarget_stats->bIsAMPDU = psrc_stats->bIsAMPDU;
 ptarget_stats->bFirstMPDU = psrc_stats->bFirstMPDU;

}
