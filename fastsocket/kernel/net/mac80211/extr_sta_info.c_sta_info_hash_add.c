
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct sta_info {TYPE_1__ sta; int hnext; } ;
struct ieee80211_local {int * sta_hash; int sta_mtx; } ;


 size_t STA_HASH (int ) ;
 int lockdep_assert_held (int *) ;
 int rcu_assign_pointer (int ,struct sta_info*) ;

__attribute__((used)) static void sta_info_hash_add(struct ieee80211_local *local,
         struct sta_info *sta)
{
 lockdep_assert_held(&local->sta_mtx);
 sta->hnext = local->sta_hash[STA_HASH(sta->sta.addr)];
 rcu_assign_pointer(local->sta_hash[STA_HASH(sta->sta.addr)], sta);
}
