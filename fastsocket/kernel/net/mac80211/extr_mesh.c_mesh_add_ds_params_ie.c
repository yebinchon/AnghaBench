
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct ieee80211_channel {int center_freq; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_EID_DS_PARAMS ;
 int ieee80211_frequency_to_channel (int ) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int mesh_add_ds_params_ie(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb)
{
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct ieee80211_channel *chan;
 u8 *pos;

 if (skb_tailroom(skb) < 3)
  return -ENOMEM;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (WARN_ON(!chanctx_conf)) {
  rcu_read_unlock();
  return -EINVAL;
 }
 chan = chanctx_conf->def.chan;
 rcu_read_unlock();

 pos = skb_put(skb, 2 + 1);
 *pos++ = WLAN_EID_DS_PARAMS;
 *pos++ = 1;
 *pos++ = ieee80211_frequency_to_channel(chan->center_freq);

 return 0;
}
