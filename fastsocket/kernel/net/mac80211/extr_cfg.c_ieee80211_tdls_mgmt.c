
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wiphy {int flags; } ;
struct sk_buff {int priority; } ;
struct net_device {int dummy; } ;
struct ieee80211_tdls_lnkie {int dummy; } ;
struct ieee80211_tdls_data {int dummy; } ;
struct TYPE_7__ {int bssid; int associated; } ;
struct TYPE_8__ {TYPE_3__ mgd; } ;
struct TYPE_6__ {scalar_t__ type; int * addr; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int dummy; } ;
struct TYPE_5__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int IEEE80211_AC_BK ;
 int IEEE80211_AC_VI ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;






 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_prep_tdls_direct (struct wiphy*,struct net_device*,int *,int ,int ,int ,struct sk_buff*) ;
 int ieee80211_prep_tdls_encap_data (struct wiphy*,struct net_device*,int *,int ,int ,int ,struct sk_buff*) ;
 int ieee80211_subif_start_xmit (struct sk_buff*,struct net_device*) ;
 int ieee80211_tdls_add_link_ie (struct sk_buff*,int *,int *,int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ max (int,int) ;
 int memcpy (int ,int const*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,int ,int *) ;

__attribute__((used)) static int ieee80211_tdls_mgmt(struct wiphy *wiphy, struct net_device *dev,
          u8 *peer, u8 action_code, u8 dialog_token,
          u16 status_code, const u8 *extra_ies,
          size_t extra_ies_len)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb = ((void*)0);
 bool send_direct;
 int ret;

 if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
  return -ENOTSUPP;


 if (sdata->vif.type != NL80211_IFTYPE_STATION ||
     !sdata->u.mgd.associated)
  return -EINVAL;

 tdls_dbg(sdata, "TDLS mgmt action %d peer %pM\n",
   action_code, peer);

 skb = dev_alloc_skb(local->hw.extra_tx_headroom +
       max(sizeof(struct ieee80211_mgmt),
    sizeof(struct ieee80211_tdls_data)) +
       50 +
       7 +
       extra_ies_len +
       sizeof(struct ieee80211_tdls_lnkie));
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, local->hw.extra_tx_headroom);

 switch (action_code) {
 case 130:
 case 129:
 case 131:
 case 128:
 case 132:
  ret = ieee80211_prep_tdls_encap_data(wiphy, dev, peer,
           action_code, dialog_token,
           status_code, skb);
  send_direct = 0;
  break;
 case 133:
  ret = ieee80211_prep_tdls_direct(wiphy, dev, peer, action_code,
       dialog_token, status_code,
       skb);
  send_direct = 1;
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }

 if (ret < 0)
  goto fail;

 if (extra_ies_len)
  memcpy(skb_put(skb, extra_ies_len), extra_ies, extra_ies_len);


 switch (action_code) {
 case 130:
 case 131:
 case 128:
 case 132:

  ieee80211_tdls_add_link_ie(skb, sdata->vif.addr, peer,
        sdata->u.mgd.bssid);
  break;
 case 129:
 case 133:

  ieee80211_tdls_add_link_ie(skb, peer, sdata->vif.addr,
        sdata->u.mgd.bssid);
  break;
 default:
  ret = -ENOTSUPP;
  goto fail;
 }

 if (send_direct) {
  ieee80211_tx_skb(sdata, skb);
  return 0;
 }





 switch (action_code) {
 case 130:
 case 129:
  skb_set_queue_mapping(skb, IEEE80211_AC_BK);
  skb->priority = 2;
  break;
 default:
  skb_set_queue_mapping(skb, IEEE80211_AC_VI);
  skb->priority = 5;
  break;
 }


 local_bh_disable();
 ret = ieee80211_subif_start_xmit(skb, dev);
 local_bh_enable();

 return ret;

fail:
 dev_kfree_skb(skb);
 return ret;
}
