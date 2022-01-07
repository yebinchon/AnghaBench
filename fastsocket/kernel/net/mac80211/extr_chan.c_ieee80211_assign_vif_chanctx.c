
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idle; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ bss_conf; int chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int chanctx_mtx; } ;
struct ieee80211_chanctx {int refcount; int conf; } ;


 int BSS_CHANGED_IDLE ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int drv_assign_vif_chanctx (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_recalc_txpower (struct ieee80211_sub_if_data*) ;
 int lockdep_assert_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;

__attribute__((used)) static int ieee80211_assign_vif_chanctx(struct ieee80211_sub_if_data *sdata,
     struct ieee80211_chanctx *ctx)
{
 struct ieee80211_local *local = sdata->local;
 int ret;

 lockdep_assert_held(&local->chanctx_mtx);

 ret = drv_assign_vif_chanctx(local, sdata, ctx);
 if (ret)
  return ret;

 rcu_assign_pointer(sdata->vif.chanctx_conf, &ctx->conf);
 ctx->refcount++;

 ieee80211_recalc_txpower(sdata);
 sdata->vif.bss_conf.idle = 0;

 if (sdata->vif.type != NL80211_IFTYPE_P2P_DEVICE &&
     sdata->vif.type != NL80211_IFTYPE_MONITOR)
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_IDLE);

 return 0;
}
