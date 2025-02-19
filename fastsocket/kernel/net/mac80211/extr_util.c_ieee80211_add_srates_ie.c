
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_5__* bitrates; } ;
struct TYPE_6__ {int basic_rates; } ;
struct TYPE_7__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_9__ {TYPE_3__* wiphy; } ;
struct ieee80211_local {TYPE_4__ hw; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_10__ {int bitrate; } ;
struct TYPE_8__ {struct ieee80211_supported_band** bands; } ;


 int BIT (int) ;
 int ENOMEM ;
 int WLAN_EID_SUPP_RATES ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

int ieee80211_add_srates_ie(struct ieee80211_sub_if_data *sdata,
       struct sk_buff *skb, bool need_basic,
       enum ieee80211_band band)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_supported_band *sband;
 int rate;
 u8 i, rates, *pos;
 u32 basic_rates = sdata->vif.bss_conf.basic_rates;

 sband = local->hw.wiphy->bands[band];
 rates = sband->n_bitrates;
 if (rates > 8)
  rates = 8;

 if (skb_tailroom(skb) < rates + 2)
  return -ENOMEM;

 pos = skb_put(skb, rates + 2);
 *pos++ = WLAN_EID_SUPP_RATES;
 *pos++ = rates;
 for (i = 0; i < rates; i++) {
  u8 basic = 0;
  if (need_basic && basic_rates & BIT(i))
   basic = 0x80;
  rate = sband->bitrates[i].bitrate;
  *pos++ = basic | (u8) (rate / 5);
 }

 return 0;
}
