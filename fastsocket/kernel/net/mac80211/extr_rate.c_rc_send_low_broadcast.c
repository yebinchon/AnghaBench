
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; } ;
typedef int s8 ;



__attribute__((used)) static void rc_send_low_broadcast(s8 *idx, u32 basic_rates,
      struct ieee80211_supported_band *sband)
{
 u8 i;

 if (basic_rates == 0)
  return;
 if (*idx < 0)
  return;
 if (basic_rates & (1 << *idx))
  return;

 for (i = *idx + 1; i <= sband->n_bitrates; i++) {
  if (basic_rates & (1 << i)) {
   *idx = i;
   return;
  }
 }


}
