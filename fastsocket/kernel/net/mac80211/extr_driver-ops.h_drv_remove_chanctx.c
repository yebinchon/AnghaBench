
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_chanctx {int driver_present; int conf; } ;
struct TYPE_2__ {int (* remove_chanctx ) (int *,int *) ;} ;


 int stub1 (int *,int *) ;
 int trace_drv_remove_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_remove_chanctx(struct ieee80211_local *local,
          struct ieee80211_chanctx *ctx)
{
 trace_drv_remove_chanctx(local, ctx);
 if (local->ops->remove_chanctx)
  local->ops->remove_chanctx(&local->hw, &ctx->conf);
 trace_drv_return_void(local);
 ctx->driver_present = 0;
}
