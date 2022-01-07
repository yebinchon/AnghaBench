
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int basic_rates; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_tx_rate {int flags; size_t idx; } ;
struct TYPE_4__ {size_t rts_cts_rate_idx; int use_cts_prot; scalar_t__ short_preamble; scalar_t__ use_rts; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {scalar_t__ bitrate; int flags; } ;
typedef size_t s8 ;


 int BIT (int) ;
 int IEEE80211_RATE_ERP_G ;
 int IEEE80211_RATE_SHORT_PREAMBLE ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ;
 int IEEE80211_TX_RC_VHT_MCS ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t ffs (int) ;
 int ieee80211_rate_get_vht_mcs (struct ieee80211_tx_rate*) ;

__attribute__((used)) static void rate_fixup_ratelist(struct ieee80211_vif *vif,
    struct ieee80211_supported_band *sband,
    struct ieee80211_tx_info *info,
    struct ieee80211_tx_rate *rates,
    int max_rates)
{
 struct ieee80211_rate *rate;
 bool inval = 0;
 int i;
 if (!(rates[0].flags & IEEE80211_TX_RC_MCS)) {
  u32 basic_rates = vif->bss_conf.basic_rates;
  s8 baserate = basic_rates ? ffs(basic_rates - 1) : 0;

  rate = &sband->bitrates[rates[0].idx];

  for (i = 0; i < sband->n_bitrates; i++) {

   if (!(basic_rates & BIT(i)))
    continue;

   if (sband->bitrates[i].bitrate > rate->bitrate)
    continue;

   if (sband->bitrates[baserate].bitrate <
        sband->bitrates[i].bitrate)
    baserate = i;
  }

  info->control.rts_cts_rate_idx = baserate;
 }

 for (i = 0; i < max_rates; i++) {





  if (inval) {
   rates[i].idx = -1;
   continue;
  }
  if (rates[i].idx < 0) {
   inval = 1;
   continue;
  }





  if (rates[i].flags & IEEE80211_TX_RC_MCS) {
   WARN_ON(rates[i].idx > 76);

   if (!(rates[i].flags & IEEE80211_TX_RC_USE_RTS_CTS) &&
       info->control.use_cts_prot)
    rates[i].flags |=
     IEEE80211_TX_RC_USE_CTS_PROTECT;
   continue;
  }

  if (rates[i].flags & IEEE80211_TX_RC_VHT_MCS) {
   WARN_ON(ieee80211_rate_get_vht_mcs(&rates[i]) > 9);
   continue;
  }


  if (info->control.use_rts) {
   rates[i].flags |= IEEE80211_TX_RC_USE_RTS_CTS;
   info->control.use_cts_prot = 0;
  }


  if (WARN_ON_ONCE(rates[i].idx >= sband->n_bitrates)) {
   rates[i].idx = -1;
   continue;
  }

  rate = &sband->bitrates[rates[i].idx];


  if (info->control.short_preamble &&
      rate->flags & IEEE80211_RATE_SHORT_PREAMBLE)
   rates[i].flags |= IEEE80211_TX_RC_USE_SHORT_PREAMBLE;


  if (!(rates[i].flags & IEEE80211_TX_RC_USE_RTS_CTS) &&
      info->control.use_cts_prot &&
      rate->flags & IEEE80211_RATE_ERP_G)
   rates[i].flags |= IEEE80211_TX_RC_USE_CTS_PROTECT;
 }
}
