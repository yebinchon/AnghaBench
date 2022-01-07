
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_vht_operation {int chan_width; int center_freq_seg2_idx; int center_freq_seg1_idx; } ;
struct TYPE_8__ {int vht_supported; } ;
struct TYPE_7__ {int cap; int ht_supported; } ;
struct ieee80211_supported_band {TYPE_3__ vht_cap; TYPE_2__ ht_cap; } ;
struct ieee80211_if_managed {scalar_t__ flags; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_5__* local; TYPE_1__ u; } ;
struct ieee80211_ht_operation {int ht_param; int primary_chan; } ;
struct ieee80211_channel {scalar_t__ center_freq; int band; } ;
struct cfg80211_chan_def {scalar_t__ width; scalar_t__ center_freq1; void* center_freq2; struct ieee80211_channel* chan; } ;
struct TYPE_9__ {int wiphy; } ;
struct TYPE_10__ {TYPE_4__ hw; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;


 int IEEE80211_HT_PARAM_CHA_SEC_OFFSET ;
 scalar_t__ IEEE80211_STA_DISABLE_40MHZ ;
 scalar_t__ IEEE80211_STA_DISABLE_HT ;
 scalar_t__ IEEE80211_STA_DISABLE_VHT ;




 scalar_t__ NL80211_CHAN_WIDTH_160 ;
 scalar_t__ NL80211_CHAN_WIDTH_20 ;
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ;
 void* NL80211_CHAN_WIDTH_40 ;
 scalar_t__ NL80211_CHAN_WIDTH_80 ;
 scalar_t__ NL80211_CHAN_WIDTH_80P80 ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int cfg80211_chandef_compatible (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ;
 scalar_t__ cfg80211_chandef_identical (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ;
 int cfg80211_chandef_usable (int ,struct cfg80211_chan_def*,int ) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;
 scalar_t__ chandef_downgrade (struct cfg80211_chan_def*) ;
 void* ieee80211_channel_to_frequency (int ,int ) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;

__attribute__((used)) static u32
ieee80211_determine_chantype(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_supported_band *sband,
        struct ieee80211_channel *channel,
        const struct ieee80211_ht_operation *ht_oper,
        const struct ieee80211_vht_operation *vht_oper,
        struct cfg80211_chan_def *chandef, bool tracking)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct cfg80211_chan_def vht_chandef;
 u32 ht_cfreq, ret;

 chandef->chan = channel;
 chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
 chandef->center_freq1 = channel->center_freq;
 chandef->center_freq2 = 0;

 if (!ht_oper || !sband->ht_cap.ht_supported) {
  ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 chandef->width = NL80211_CHAN_WIDTH_20;

 ht_cfreq = ieee80211_channel_to_frequency(ht_oper->primary_chan,
        channel->band);

 if (!tracking && channel->center_freq != ht_cfreq) {







  sdata_info(sdata,
      "Wrong control channel: center-freq: %d ht-cfreq: %d ht->primary_chan: %d band: %d - Disabling HT\n",
      channel->center_freq, ht_cfreq,
      ht_oper->primary_chan, channel->band);
  ret = IEEE80211_STA_DISABLE_HT | IEEE80211_STA_DISABLE_VHT;
  goto out;
 }


 if (sband->ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40) {
  switch (ht_oper->ht_param & IEEE80211_HT_PARAM_CHA_SEC_OFFSET) {
  case 133:
   chandef->width = NL80211_CHAN_WIDTH_40;
   chandef->center_freq1 += 10;
   break;
  case 132:
   chandef->width = NL80211_CHAN_WIDTH_40;
   chandef->center_freq1 -= 10;
   break;
  }
 } else {

  ret = IEEE80211_STA_DISABLE_VHT;

  ret |= IEEE80211_STA_DISABLE_40MHZ;
  goto out;
 }

 if (!vht_oper || !sband->vht_cap.vht_supported) {
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 vht_chandef.chan = channel;
 vht_chandef.center_freq1 =
  ieee80211_channel_to_frequency(vht_oper->center_freq_seg1_idx,
            channel->band);
 vht_chandef.center_freq2 = 0;

 switch (vht_oper->chan_width) {
 case 128:
  vht_chandef.width = chandef->width;
  break;
 case 130:
  vht_chandef.width = NL80211_CHAN_WIDTH_80;
  break;
 case 131:
  vht_chandef.width = NL80211_CHAN_WIDTH_160;
  break;
 case 129:
  vht_chandef.width = NL80211_CHAN_WIDTH_80P80;
  vht_chandef.center_freq2 =
   ieee80211_channel_to_frequency(
    vht_oper->center_freq_seg2_idx,
    channel->band);
  break;
 default:
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
   sdata_info(sdata,
       "AP VHT operation IE has invalid channel width (%d), disable VHT\n",
       vht_oper->chan_width);
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 if (!cfg80211_chandef_valid(&vht_chandef)) {
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
   sdata_info(sdata,
       "AP VHT information is invalid, disable VHT\n");
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 if (cfg80211_chandef_identical(chandef, &vht_chandef)) {
  ret = 0;
  goto out;
 }

 if (!cfg80211_chandef_compatible(chandef, &vht_chandef)) {
  if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
   sdata_info(sdata,
       "AP VHT information doesn't match HT, disable VHT\n");
  ret = IEEE80211_STA_DISABLE_VHT;
  goto out;
 }

 *chandef = vht_chandef;

 ret = 0;

out:

 if (ret & IEEE80211_STA_DISABLE_VHT)
  vht_chandef = *chandef;
 while (!cfg80211_chandef_usable(sdata->local->hw.wiphy, chandef,
     tracking ? 0 :
         IEEE80211_CHAN_DISABLED)) {
  if (WARN_ON(chandef->width == NL80211_CHAN_WIDTH_20_NOHT)) {
   ret = IEEE80211_STA_DISABLE_HT |
         IEEE80211_STA_DISABLE_VHT;
   break;
  }

  ret |= chandef_downgrade(chandef);
 }

 if (chandef->width != vht_chandef.width && !tracking)
  sdata_info(sdata,
      "capabilities/regulatory prevented using AP HT/VHT configuration, downgraded\n");

 WARN_ON_ONCE(!cfg80211_chandef_valid(chandef));
 return ret;
}
