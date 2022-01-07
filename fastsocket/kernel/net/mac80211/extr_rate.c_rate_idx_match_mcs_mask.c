
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_tx_rate {int idx; } ;


 int BIT (int) ;
 int IEEE80211_HT_MCS_MASK_LEN ;

__attribute__((used)) static bool rate_idx_match_mcs_mask(struct ieee80211_tx_rate *rate,
        u8 mcs_mask[IEEE80211_HT_MCS_MASK_LEN])
{
 int i, j;
 int ridx, rbit;

 ridx = rate->idx / 8;
 rbit = rate->idx % 8;


 if (ridx < 0 || ridx >= IEEE80211_HT_MCS_MASK_LEN)
  return 0;


 for (i = ridx; i >= 0; i--) {
  for (j = rbit; j >= 0; j--)
   if (mcs_mask[i] & BIT(j)) {
    rate->idx = i * 8 + j;
    return 1;
   }
  rbit = 7;
 }


 ridx = (rate->idx + 1) / 8;
 rbit = (rate->idx + 1) % 8;

 for (i = ridx; i < IEEE80211_HT_MCS_MASK_LEN; i++) {
  for (j = rbit; j < 8; j++)
   if (mcs_mask[i] & BIT(j)) {
    rate->idx = i * 8 + j;
    return 1;
   }
  rbit = 0;
 }
 return 0;
}
