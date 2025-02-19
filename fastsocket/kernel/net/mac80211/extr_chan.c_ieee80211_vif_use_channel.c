
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg80211_chan_def {int dummy; } ;
struct TYPE_3__ {struct cfg80211_chan_def chandef; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; scalar_t__ dev; struct ieee80211_local* local; } ;
struct ieee80211_local {int chanctx_mtx; } ;
struct ieee80211_chanctx {scalar_t__ refcount; } ;
typedef enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;


 scalar_t__ IS_ERR (struct ieee80211_chanctx*) ;
 int PTR_ERR (struct ieee80211_chanctx*) ;
 int WARN_ON (int) ;
 int __ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int ieee80211_assign_vif_chanctx (struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ;
 struct ieee80211_chanctx* ieee80211_find_chanctx (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ;
 int ieee80211_free_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 struct ieee80211_chanctx* ieee80211_new_chanctx (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ;
 int ieee80211_recalc_radar_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int ieee80211_recalc_smps_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ netif_carrier_ok (scalar_t__) ;

int ieee80211_vif_use_channel(struct ieee80211_sub_if_data *sdata,
         const struct cfg80211_chan_def *chandef,
         enum ieee80211_chanctx_mode mode)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_chanctx *ctx;
 int ret;

 WARN_ON(sdata->dev && netif_carrier_ok(sdata->dev));

 mutex_lock(&local->chanctx_mtx);
 __ieee80211_vif_release_channel(sdata);

 ctx = ieee80211_find_chanctx(local, chandef, mode);
 if (!ctx)
  ctx = ieee80211_new_chanctx(local, chandef, mode);
 if (IS_ERR(ctx)) {
  ret = PTR_ERR(ctx);
  goto out;
 }

 sdata->vif.bss_conf.chandef = *chandef;

 ret = ieee80211_assign_vif_chanctx(sdata, ctx);
 if (ret) {

  if (ctx->refcount == 0)
   ieee80211_free_chanctx(local, ctx);
  goto out;
 }

 ieee80211_recalc_smps_chanctx(local, ctx);
 ieee80211_recalc_radar_chanctx(local, ctx);
 out:
 mutex_unlock(&local->chanctx_mtx);
 return ret;
}
