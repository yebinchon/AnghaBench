
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_local {struct cfg80211_chan_def _oper_chandef; int use_chanctx; } ;
struct TYPE_2__ {struct cfg80211_chan_def def; } ;
struct ieee80211_chanctx {TYPE_1__ conf; } ;


 int IEEE80211_CHANCTX_CHANGE_WIDTH ;
 int WARN_ON (int) ;
 int cfg80211_chandef_compatible (struct cfg80211_chan_def*,struct cfg80211_chan_def const*) ;
 scalar_t__ cfg80211_chandef_identical (struct cfg80211_chan_def*,struct cfg80211_chan_def const*) ;
 int drv_change_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*,int ) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;

__attribute__((used)) static void ieee80211_change_chanctx(struct ieee80211_local *local,
         struct ieee80211_chanctx *ctx,
         const struct cfg80211_chan_def *chandef)
{
 if (cfg80211_chandef_identical(&ctx->conf.def, chandef))
  return;

 WARN_ON(!cfg80211_chandef_compatible(&ctx->conf.def, chandef));

 ctx->conf.def = *chandef;
 drv_change_chanctx(local, ctx, IEEE80211_CHANCTX_CHANGE_WIDTH);

 if (!local->use_chanctx) {
  local->_oper_chandef = *chandef;
  ieee80211_hw_config(local, 0);
 }
}
