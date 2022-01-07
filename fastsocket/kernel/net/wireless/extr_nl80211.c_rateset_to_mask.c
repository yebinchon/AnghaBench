
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int bitrate; } ;



__attribute__((used)) static u32 rateset_to_mask(struct ieee80211_supported_band *sband,
      u8 *rates, u8 rates_len)
{
 u8 i;
 u32 mask = 0;

 for (i = 0; i < rates_len; i++) {
  int rate = (rates[i] & 0x7f) * 5;
  int ridx;
  for (ridx = 0; ridx < sband->n_bitrates; ridx++) {
   struct ieee80211_rate *srate =
    &sband->bitrates[ridx];
   if (rate == srate->bitrate) {
    mask |= 1 << ridx;
    break;
   }
  }
  if (ridx == sband->n_bitrates)
   return 0;
 }

 return mask;
}
