
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_tkip_seq ) (int *,int ,int *,int *) ;} ;


 int stub1 (int *,int ,int *,int *) ;
 int trace_drv_get_tkip_seq (struct ieee80211_local*,int ,int *,int *) ;

__attribute__((used)) static inline void drv_get_tkip_seq(struct ieee80211_local *local,
        u8 hw_key_idx, u32 *iv32, u16 *iv16)
{
 if (local->ops->get_tkip_seq)
  local->ops->get_tkip_seq(&local->hw, hw_key_idx, iv32, iv16);
 trace_drv_get_tkip_seq(local, hw_key_idx, iv32, iv16);
}
