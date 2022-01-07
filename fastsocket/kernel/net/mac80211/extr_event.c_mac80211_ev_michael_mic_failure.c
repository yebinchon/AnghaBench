
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_sub_if_data {int dev; } ;
struct ieee80211_hdr {int* addr1; int addr2; } ;
typedef int gfp_t ;


 int NL80211_KEYTYPE_GROUP ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int cfg80211_michael_mic_failure (int ,int ,int ,int,int const*,int ) ;

void mac80211_ev_michael_mic_failure(struct ieee80211_sub_if_data *sdata, int keyidx,
         struct ieee80211_hdr *hdr, const u8 *tsc,
         gfp_t gfp)
{
 cfg80211_michael_mic_failure(sdata->dev, hdr->addr2,
         (hdr->addr1[0] & 0x01) ?
         NL80211_KEYTYPE_GROUP :
         NL80211_KEYTYPE_PAIRWISE,
         keyidx, tsc, gfp);
}
