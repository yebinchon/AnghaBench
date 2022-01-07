
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_tx_rate {int idx; } ;



__attribute__((used)) static bool rate_idx_match_legacy_mask(struct ieee80211_tx_rate *rate,
           int n_bitrates, u32 mask)
{
 int j;


 for (j = rate->idx; j >= 0; j--) {
  if (mask & (1 << j)) {

   rate->idx = j;
   return 1;
  }
 }


 for (j = rate->idx + 1; j < n_bitrates; j++) {
  if (mask & (1 << j)) {

   rate->idx = j;
   return 1;
  }
 }
 return 0;
}
