
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_chanctx {int conf; int driver_present; } ;
struct TYPE_2__ {int (* change_chanctx ) (int *,int *,int ) ;} ;


 int WARN_ON_ONCE (int) ;
 int stub1 (int *,int *,int ) ;
 int trace_drv_change_chanctx (struct ieee80211_local*,struct ieee80211_chanctx*,int ) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_change_chanctx(struct ieee80211_local *local,
          struct ieee80211_chanctx *ctx,
          u32 changed)
{
 trace_drv_change_chanctx(local, ctx, changed);
 if (local->ops->change_chanctx) {
  WARN_ON_ONCE(!ctx->driver_present);
  local->ops->change_chanctx(&local->hw, &ctx->conf, changed);
 }
 trace_drv_return_void(local);
}
