
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; TYPE_2__ u; } ;
struct TYPE_6__ {int mtx; } ;


 int IEEE80211_STA_BEACON_POLL ;
 int IEEE80211_STA_CONNECTION_POLL ;
 int ieee80211_run_deferred_scan (TYPE_3__*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void __ieee80211_stop_poll(struct ieee80211_sub_if_data *sdata)
{
 lockdep_assert_held(&sdata->local->mtx);

 sdata->u.mgd.flags &= ~(IEEE80211_STA_CONNECTION_POLL |
    IEEE80211_STA_BEACON_POLL);
 ieee80211_run_deferred_scan(sdata->local);
}
