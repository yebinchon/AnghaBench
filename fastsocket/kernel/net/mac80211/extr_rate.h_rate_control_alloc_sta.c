
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct ieee80211_sta {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {void* (* alloc_sta ) (int ,struct ieee80211_sta*,int ) ;} ;


 void* stub1 (int ,struct ieee80211_sta*,int ) ;

__attribute__((used)) static inline void *rate_control_alloc_sta(struct rate_control_ref *ref,
        struct ieee80211_sta *sta,
        gfp_t gfp)
{
 return ref->ops->alloc_sta(ref->priv, sta, gfp);
}
