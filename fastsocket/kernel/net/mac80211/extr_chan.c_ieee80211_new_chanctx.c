
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_4__ {int radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; scalar_t__ chanctx_data_size; } ;
struct ieee80211_local {int mtx; int chanctx_list; struct cfg80211_chan_def _oper_chandef; int use_chanctx; TYPE_2__ hw; int chanctx_mtx; } ;
struct TYPE_6__ {int rx_chains_static; int rx_chains_dynamic; int radar_enabled; struct cfg80211_chan_def def; } ;
struct ieee80211_chanctx {int mode; int list; TYPE_3__ conf; } ;
typedef enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;


 int ENOMEM ;
 struct ieee80211_chanctx* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drv_add_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_hw_config (struct ieee80211_local*,scalar_t__) ;
 scalar_t__ ieee80211_idle_off (struct ieee80211_local*) ;
 int ieee80211_is_radar_required (struct ieee80211_local*) ;
 int ieee80211_recalc_idle (struct ieee80211_local*) ;
 int kfree (struct ieee80211_chanctx*) ;
 struct ieee80211_chanctx* kzalloc (scalar_t__,int ) ;
 int list_add_rcu (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ieee80211_chanctx *
ieee80211_new_chanctx(struct ieee80211_local *local,
        const struct cfg80211_chan_def *chandef,
        enum ieee80211_chanctx_mode mode)
{
 struct ieee80211_chanctx *ctx;
 u32 changed;
 int err;

 lockdep_assert_held(&local->chanctx_mtx);

 ctx = kzalloc(sizeof(*ctx) + local->hw.chanctx_data_size, GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 ctx->conf.def = *chandef;
 ctx->conf.rx_chains_static = 1;
 ctx->conf.rx_chains_dynamic = 1;
 ctx->mode = mode;
 ctx->conf.radar_enabled = ieee80211_is_radar_required(local);
 if (!local->use_chanctx)
  local->hw.conf.radar_enabled = ctx->conf.radar_enabled;


 mutex_lock(&local->mtx);

 changed = ieee80211_idle_off(local);
 if (changed)
  ieee80211_hw_config(local, changed);

 if (!local->use_chanctx) {
  local->_oper_chandef = *chandef;
  ieee80211_hw_config(local, 0);
 } else {
  err = drv_add_chanctx(local, ctx);
  if (err) {
   kfree(ctx);
   ctx = ERR_PTR(err);

   ieee80211_recalc_idle(local);
   goto out;
  }
 }


 list_add_rcu(&ctx->list, &local->chanctx_list);

 out:
 mutex_unlock(&local->mtx);

 return ctx;
}
