
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_chanctx {int conf; int driver_present; } ;
struct TYPE_2__ {int (* unassign_vif_chanctx ) (int *,int *,int *) ;} ;


 int WARN_ON_ONCE (int) ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *,int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_unassign_vif_chanctx (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ;

__attribute__((used)) static inline void drv_unassign_vif_chanctx(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata,
         struct ieee80211_chanctx *ctx)
{
 check_sdata_in_driver(sdata);

 trace_drv_unassign_vif_chanctx(local, sdata, ctx);
 if (local->ops->unassign_vif_chanctx) {
  WARN_ON_ONCE(!ctx->driver_present);
  local->ops->unassign_vif_chanctx(&local->hw,
       &sdata->vif,
       &ctx->conf);
 }
 trace_drv_return_void(local);
}
