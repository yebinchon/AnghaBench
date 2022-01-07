
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_supported_band {int n_bitrates; int n_channels; scalar_t__ band; TYPE_8__* channels; TYPE_7__* bitrates; } ;
struct TYPE_15__ {scalar_t__ addr; int chanctx_conf; } ;
struct ieee80211_if_managed {int flags; int uapsd_queues; int uapsd_max_sp_len; int mtx; struct ieee80211_mgd_assoc_data* assoc_data; } ;
struct TYPE_14__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int smps_mode; TYPE_11__ vif; TYPE_10__ u; struct ieee80211_local* local; } ;
struct TYPE_21__ {void* listen_interval; void* capab_info; } ;
struct TYPE_20__ {int* current_ap; void* listen_interval; void* capab_info; } ;
struct TYPE_22__ {TYPE_4__ assoc_req; TYPE_3__ reassoc_req; } ;
struct ieee80211_mgmt {int* da; int* sa; int* bssid; TYPE_5__ u; void* frame_control; } ;
struct ieee80211_mgd_assoc_data {int ssid_len; size_t ie_len; int capability; scalar_t__ ie; scalar_t__ uapsd; scalar_t__ wmm; int ap_vht_cap; int ap_ht_param; scalar_t__ ssid; scalar_t__ prev_bssid; TYPE_2__* bss; scalar_t__ supp_rates_len; int supp_rates; } ;
struct TYPE_23__ {int listen_interval; } ;
struct TYPE_26__ {int flags; TYPE_6__ conf; scalar_t__ extra_tx_headroom; TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_9__ hw; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct ieee80211_channel {size_t band; int max_power; } ;
struct TYPE_16__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_12__ def; } ;
struct TYPE_25__ {int center_freq; } ;
struct TYPE_24__ {int bitrate; } ;
struct TYPE_19__ {scalar_t__ bssid; } ;
struct TYPE_18__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_17__ {int flags; } ;


 int ARRAY_SIZE (int const*) ;
 int BIT (int) ;
 size_t ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_HW_2GHZ_SHORT_PREAMBLE_INCAPABLE ;
 int IEEE80211_HW_2GHZ_SHORT_SLOT_INCAPABLE ;
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ;
 int IEEE80211_HW_SPECTRUM_MGMT ;
 TYPE_13__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STA_DISABLE_HT ;
 int IEEE80211_STA_DISABLE_VHT ;
 int IEEE80211_STYPE_ASSOC_REQ ;
 int IEEE80211_STYPE_REASSOC_REQ ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int IEEE80211_TX_INTFL_MLME_CONN_TX ;
 int IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int WLAN_CAPABILITY_SHORT_SLOT_TIME ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 void* cpu_to_le16 (int) ;
 int drv_mgd_prepare_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_add_ht_ie (struct ieee80211_sub_if_data*,struct sk_buff*,int ,struct ieee80211_supported_band*,struct ieee80211_channel*,int ) ;
 int ieee80211_add_vht_ie (struct ieee80211_sub_if_data*,struct sk_buff*,struct ieee80211_supported_band*,int *) ;
 int ieee80211_compatible_rates (int ,scalar_t__,struct ieee80211_supported_band*,int*) ;
 int ieee80211_frequency_to_channel (int ) ;
 size_t ieee80211_ie_split (scalar_t__,size_t,int const*,int ,size_t) ;
 size_t ieee80211_ie_split_vendor (scalar_t__,size_t,size_t) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int is_zero_ether_addr (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int*,scalar_t__,size_t) ;
 int memset (struct ieee80211_mgmt*,int ,int) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int* skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ieee80211_send_assoc(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_mgd_assoc_data *assoc_data = ifmgd->assoc_data;
 struct sk_buff *skb;
 struct ieee80211_mgmt *mgmt;
 u8 *pos, qos_info;
 size_t offset = 0, noffset;
 int i, count, rates_len, supp_rates_len;
 u16 capab;
 struct ieee80211_supported_band *sband;
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct ieee80211_channel *chan;
 u32 rates = 0;

 lockdep_assert_held(&ifmgd->mtx);

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (WARN_ON(!chanctx_conf)) {
  rcu_read_unlock();
  return;
 }
 chan = chanctx_conf->def.chan;
 rcu_read_unlock();
 sband = local->hw.wiphy->bands[chan->band];

 if (assoc_data->supp_rates_len) {






  rates_len = ieee80211_compatible_rates(assoc_data->supp_rates,
             assoc_data->supp_rates_len,
             sband, &rates);
 } else {





  rates = ~0;
  rates_len = sband->n_bitrates;
 }

 skb = alloc_skb(local->hw.extra_tx_headroom +
   sizeof(*mgmt) +
   2 + assoc_data->ssid_len +
   4 + rates_len +
   4 +
   2 + 2 * sband->n_channels +
   2 + sizeof(struct ieee80211_ht_cap) +
   2 + sizeof(struct ieee80211_vht_cap) +
   assoc_data->ie_len +
   9,
   GFP_KERNEL);
 if (!skb)
  return;

 skb_reserve(skb, local->hw.extra_tx_headroom);

 capab = WLAN_CAPABILITY_ESS;

 if (sband->band == IEEE80211_BAND_2GHZ) {
  if (!(local->hw.flags & IEEE80211_HW_2GHZ_SHORT_SLOT_INCAPABLE))
   capab |= WLAN_CAPABILITY_SHORT_SLOT_TIME;
  if (!(local->hw.flags & IEEE80211_HW_2GHZ_SHORT_PREAMBLE_INCAPABLE))
   capab |= WLAN_CAPABILITY_SHORT_PREAMBLE;
 }

 if (assoc_data->capability & WLAN_CAPABILITY_PRIVACY)
  capab |= WLAN_CAPABILITY_PRIVACY;

 if ((assoc_data->capability & WLAN_CAPABILITY_SPECTRUM_MGMT) &&
     (local->hw.flags & IEEE80211_HW_SPECTRUM_MGMT))
  capab |= WLAN_CAPABILITY_SPECTRUM_MGMT;

 mgmt = (struct ieee80211_mgmt *) skb_put(skb, 24);
 memset(mgmt, 0, 24);
 memcpy(mgmt->da, assoc_data->bss->bssid, ETH_ALEN);
 memcpy(mgmt->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(mgmt->bssid, assoc_data->bss->bssid, ETH_ALEN);

 if (!is_zero_ether_addr(assoc_data->prev_bssid)) {
  skb_put(skb, 10);
  mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_REASSOC_REQ);
  mgmt->u.reassoc_req.capab_info = cpu_to_le16(capab);
  mgmt->u.reassoc_req.listen_interval =
    cpu_to_le16(local->hw.conf.listen_interval);
  memcpy(mgmt->u.reassoc_req.current_ap, assoc_data->prev_bssid,
         ETH_ALEN);
 } else {
  skb_put(skb, 4);
  mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
        IEEE80211_STYPE_ASSOC_REQ);
  mgmt->u.assoc_req.capab_info = cpu_to_le16(capab);
  mgmt->u.assoc_req.listen_interval =
    cpu_to_le16(local->hw.conf.listen_interval);
 }


 pos = skb_put(skb, 2 + assoc_data->ssid_len);
 *pos++ = 131;
 *pos++ = assoc_data->ssid_len;
 memcpy(pos, assoc_data->ssid, assoc_data->ssid_len);


 supp_rates_len = rates_len;
 if (supp_rates_len > 8)
  supp_rates_len = 8;

 pos = skb_put(skb, supp_rates_len + 2);
 *pos++ = 128;
 *pos++ = supp_rates_len;

 count = 0;
 for (i = 0; i < sband->n_bitrates; i++) {
  if (BIT(i) & rates) {
   int rate = sband->bitrates[i].bitrate;
   *pos++ = (u8) (rate / 5);
   if (++count == 8)
    break;
  }
 }

 if (rates_len > count) {
  pos = skb_put(skb, rates_len - count + 2);
  *pos++ = 137;
  *pos++ = rates_len - count;

  for (i++; i < sband->n_bitrates; i++) {
   if (BIT(i) & rates) {
    int rate = sband->bitrates[i].bitrate;
    *pos++ = (u8) (rate / 5);
   }
  }
 }

 if (capab & WLAN_CAPABILITY_SPECTRUM_MGMT) {

  pos = skb_put(skb, 4);
  *pos++ = 135;
  *pos++ = 2;
  *pos++ = 0;
  *pos++ = chan->max_power;



  pos = skb_put(skb, 2 * sband->n_channels + 2);
  *pos++ = 130;
  *pos++ = 2 * sband->n_channels;
  for (i = 0; i < sband->n_channels; i++) {
   *pos++ = ieee80211_frequency_to_channel(
     sband->channels[i].center_freq);
   *pos++ = 1;
  }
 }


 if (assoc_data->ie_len && assoc_data->ie) {
  static const u8 before_ht[] = {
   131,
   128,
   137,
   135,
   130,
   132,
   134,
   133,
   136,
   129,
  };
  noffset = ieee80211_ie_split(assoc_data->ie, assoc_data->ie_len,
          before_ht, ARRAY_SIZE(before_ht),
          offset);
  pos = skb_put(skb, noffset - offset);
  memcpy(pos, assoc_data->ie + offset, noffset - offset);
  offset = noffset;
 }

 if (WARN_ON_ONCE((ifmgd->flags & IEEE80211_STA_DISABLE_HT) &&
    !(ifmgd->flags & IEEE80211_STA_DISABLE_VHT)))
  ifmgd->flags |= IEEE80211_STA_DISABLE_VHT;

 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HT))
  ieee80211_add_ht_ie(sdata, skb, assoc_data->ap_ht_param,
        sband, chan, sdata->smps_mode);

 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_VHT))
  ieee80211_add_vht_ie(sdata, skb, sband,
         &assoc_data->ap_vht_cap);


 if (assoc_data->ie_len && assoc_data->ie) {
  noffset = ieee80211_ie_split_vendor(assoc_data->ie,
          assoc_data->ie_len,
          offset);
  pos = skb_put(skb, noffset - offset);
  memcpy(pos, assoc_data->ie + offset, noffset - offset);
  offset = noffset;
 }

 if (assoc_data->wmm) {
  if (assoc_data->uapsd) {
   qos_info = ifmgd->uapsd_queues;
   qos_info |= (ifmgd->uapsd_max_sp_len <<
         IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT);
  } else {
   qos_info = 0;
  }

  pos = skb_put(skb, 9);
  *pos++ = WLAN_EID_VENDOR_SPECIFIC;
  *pos++ = 7;
  *pos++ = 0x00;
  *pos++ = 0x50;
  *pos++ = 0xf2;
  *pos++ = 2;
  *pos++ = 0;
  *pos++ = 1;
  *pos++ = qos_info;
 }


 if (assoc_data->ie_len && assoc_data->ie) {
  noffset = assoc_data->ie_len;
  pos = skb_put(skb, noffset - offset);
  memcpy(pos, assoc_data->ie + offset, noffset - offset);
 }

 drv_mgd_prepare_tx(local, sdata);

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
 if (local->hw.flags & IEEE80211_HW_REPORTS_TX_ACK_STATUS)
  IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_REQ_TX_STATUS |
      IEEE80211_TX_INTFL_MLME_CONN_TX;
 ieee80211_tx_skb(sdata, skb);
}
