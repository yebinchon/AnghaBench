
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_3__ def; } ;
struct TYPE_5__ {int band; } ;


 scalar_t__ WARN_ON (int) ;
 int __ieee80211_tx_skb_tid_band (struct ieee80211_sub_if_data*,struct sk_buff*,int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void ieee80211_tx_skb_tid(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, int tid)
{
 struct ieee80211_chanctx_conf *chanctx_conf;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (WARN_ON(!chanctx_conf)) {
  rcu_read_unlock();
  kfree_skb(skb);
  return;
 }

 __ieee80211_tx_skb_tid_band(sdata, skb, tid,
        chanctx_conf->def.chan->band);
 rcu_read_unlock();
}
