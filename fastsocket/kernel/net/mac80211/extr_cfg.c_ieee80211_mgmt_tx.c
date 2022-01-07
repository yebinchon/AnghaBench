
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
typedef unsigned long u64 ;
typedef int u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct sta_info {int dummy; } ;
struct sk_buff {int dev; } ;
struct TYPE_14__ {int ibss_joined; } ;
struct TYPE_12__ {int type; int chanctx_conf; TYPE_1__ bss_conf; } ;
struct TYPE_19__ {int associated; } ;
struct TYPE_15__ {int mesh_id_len; } ;
struct TYPE_20__ {TYPE_6__ mgd; TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {int dev; TYPE_10__ vif; TYPE_7__ u; TYPE_3__* bss; struct ieee80211_local* local; } ;
struct TYPE_17__ {int category; } ;
struct TYPE_18__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {int da; TYPE_5__ u; int frame_control; } ;
struct TYPE_22__ {int flags; int offchannel_tx_hw_queue; scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {int mtx; TYPE_9__ hw; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_21__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_8__ def; } ;
struct TYPE_16__ {int beacon; } ;
struct TYPE_13__ {int flags; int hw_queue; } ;


 int EBUSY ;
 int ENOLINK ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IEEE80211_HW_QUEUE_CONTROL ;
 int IEEE80211_ROC_TYPE_MGMT_TX ;
 TYPE_11__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTL_NO_CCK_RATE ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_CTL_TX_OFFCHAN ;
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ;
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int WLAN_CATEGORY_PUBLIC ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_is_action (int ) ;
 int ieee80211_start_roc_work (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel*,unsigned int,unsigned long*,struct sk_buff*,int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int ieee80211_vif_is_mesh (TYPE_10__*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_access_pointer (int ) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int ) ;

__attribute__((used)) static int ieee80211_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
        struct ieee80211_channel *chan, bool offchan,
        unsigned int wait, const u8 *buf, size_t len,
        bool no_cck, bool dont_wait_for_ack, u64 *cookie)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct sta_info *sta;
 const struct ieee80211_mgmt *mgmt = (void *)buf;
 bool need_offchan = 0;
 u32 flags;
 int ret;

 if (dont_wait_for_ack)
  flags = IEEE80211_TX_CTL_NO_ACK;
 else
  flags = IEEE80211_TX_INTFL_NL80211_FRAME_TX |
   IEEE80211_TX_CTL_REQ_TX_STATUS;

 if (no_cck)
  flags |= IEEE80211_TX_CTL_NO_CCK_RATE;

 switch (sdata->vif.type) {
 case 135:
  if (!sdata->vif.bss_conf.ibss_joined)
   need_offchan = 1;
 case 134:
 case 133:
 case 129:
  if (sdata->vif.type != 135 &&
      !ieee80211_vif_is_mesh(&sdata->vif) &&
      !rcu_access_pointer(sdata->bss->beacon))
   need_offchan = 1;
  if (!ieee80211_is_action(mgmt->frame_control) ||
      mgmt->u.action.category == WLAN_CATEGORY_PUBLIC)
   break;
  rcu_read_lock();
  sta = sta_info_get(sdata, mgmt->da);
  rcu_read_unlock();
  if (!sta)
   return -ENOLINK;
  break;
 case 128:
 case 131:
  if (!sdata->u.mgd.associated)
   need_offchan = 1;
  break;
 case 130:
  need_offchan = 1;
  break;
 default:
  return -EOPNOTSUPP;
 }

 mutex_lock(&local->mtx);


 if (!need_offchan) {
  struct ieee80211_chanctx_conf *chanctx_conf;

  rcu_read_lock();
  chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);

  if (chanctx_conf)
   need_offchan = chan != chanctx_conf->def.chan;
  else
   need_offchan = 1;
  rcu_read_unlock();
 }

 if (need_offchan && !offchan) {
  ret = -EBUSY;
  goto out_unlock;
 }

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + len);
 if (!skb) {
  ret = -ENOMEM;
  goto out_unlock;
 }
 skb_reserve(skb, local->hw.extra_tx_headroom);

 memcpy(skb_put(skb, len), buf, len);

 IEEE80211_SKB_CB(skb)->flags = flags;

 skb->dev = sdata->dev;

 if (!need_offchan) {
  *cookie = (unsigned long) skb;
  ieee80211_tx_skb(sdata, skb);
  ret = 0;
  goto out_unlock;
 }

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_TX_OFFCHAN |
     IEEE80211_TX_INTFL_OFFCHAN_TX_OK;
 if (local->hw.flags & IEEE80211_HW_QUEUE_CONTROL)
  IEEE80211_SKB_CB(skb)->hw_queue =
   local->hw.offchannel_tx_hw_queue;


 ret = ieee80211_start_roc_work(local, sdata, chan,
           wait, cookie, skb,
           IEEE80211_ROC_TYPE_MGMT_TX);
 if (ret)
  kfree_skb(skb);
 out_unlock:
 mutex_unlock(&local->mtx);
 return ret;
}
