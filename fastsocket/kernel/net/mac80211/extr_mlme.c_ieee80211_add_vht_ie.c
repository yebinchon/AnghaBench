
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vht_cap ;
typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int vht_cap_info; } ;
struct ieee80211_supported_band {int vht_cap; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct ieee80211_sta_vht_cap {int cap; } ;


 int BUILD_BUG_ON (int) ;
 int IEEE80211_STA_DISABLE_160MHZ ;
 int IEEE80211_STA_DISABLE_80P80MHZ ;
 int IEEE80211_VHT_CAP_SHORT_GI_160 ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ;
 int IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE ;
 int IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE ;
 int cpu_to_le32 (int ) ;
 int ieee80211_apply_vhtcap_overrides (struct ieee80211_sub_if_data*,struct ieee80211_sta_vht_cap*) ;
 int ieee80211_ie_build_vht_cap (int *,struct ieee80211_sta_vht_cap*,int ) ;
 int memcpy (struct ieee80211_sta_vht_cap*,int *,int) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_add_vht_ie(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb,
     struct ieee80211_supported_band *sband,
     struct ieee80211_vht_cap *ap_vht_cap)
{
 u8 *pos;
 u32 cap;
 struct ieee80211_sta_vht_cap vht_cap;

 BUILD_BUG_ON(sizeof(vht_cap) != sizeof(sband->vht_cap));

 memcpy(&vht_cap, &sband->vht_cap, sizeof(vht_cap));
 ieee80211_apply_vhtcap_overrides(sdata, &vht_cap);


 cap = vht_cap.cap;

 if (sdata->u.mgd.flags & IEEE80211_STA_DISABLE_80P80MHZ) {
  cap &= ~IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ;
  cap |= IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ;
 }

 if (sdata->u.mgd.flags & IEEE80211_STA_DISABLE_160MHZ) {
  cap &= ~IEEE80211_VHT_CAP_SHORT_GI_160;
  cap &= ~IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ;
 }





 if (!(ap_vht_cap->vht_cap_info &
   cpu_to_le32(IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE)))
  cap &= ~IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE;


 pos = skb_put(skb, sizeof(struct ieee80211_vht_cap) + 2);
 ieee80211_ie_build_vht_cap(pos, &vht_cap, cap);
}
