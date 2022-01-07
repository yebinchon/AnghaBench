
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int radar_enabled; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;
struct cfg80211_chan_def {scalar_t__ center_freq2; TYPE_1__* chan; int center_freq1; int width; } ;
struct ieee80211_local {int mtx; int chanctx_list; TYPE_3__ hw; struct cfg80211_chan_def _oper_chandef; int use_chanctx; int chanctx_mtx; } ;
struct ieee80211_chanctx {scalar_t__ refcount; int list; } ;
struct TYPE_4__ {int center_freq; } ;


 int NL80211_CHAN_WIDTH_20_NOHT ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int drv_remove_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_recalc_idle (struct ieee80211_local*) ;
 int kfree_rcu (struct ieee80211_chanctx*,int ) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_head ;

__attribute__((used)) static void ieee80211_free_chanctx(struct ieee80211_local *local,
       struct ieee80211_chanctx *ctx)
{
 bool check_single_channel = 0;
 lockdep_assert_held(&local->chanctx_mtx);

 WARN_ON_ONCE(ctx->refcount != 0);

 if (!local->use_chanctx) {
  struct cfg80211_chan_def *chandef = &local->_oper_chandef;
  chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
  chandef->center_freq1 = chandef->chan->center_freq;
  chandef->center_freq2 = 0;




  if (local->hw.conf.radar_enabled)
   check_single_channel = 1;
  local->hw.conf.radar_enabled = 0;

  ieee80211_hw_config(local, 0);
 } else {
  drv_remove_chanctx(local, ctx);
 }

 list_del_rcu(&ctx->list);
 kfree_rcu(ctx, rcu_head);


 WARN_ON(check_single_channel && !list_empty(&local->chanctx_list));

 mutex_lock(&local->mtx);
 ieee80211_recalc_idle(local);
 mutex_unlock(&local->mtx);
}
