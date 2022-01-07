
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int addr; } ;
struct sta_info {int hnext; TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {scalar_t__ bss; struct ieee80211_local* local; } ;
struct ieee80211_local {int sta_mtx; int * sta_hash; } ;


 size_t STA_HASH (int const*) ;
 scalar_t__ ether_addr_equal (int ,int const*) ;
 int lockdep_is_held (int *) ;
 struct sta_info* rcu_dereference_check (int ,int ) ;

struct sta_info *sta_info_get_bss(struct ieee80211_sub_if_data *sdata,
      const u8 *addr)
{
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;

 sta = rcu_dereference_check(local->sta_hash[STA_HASH(addr)],
        lockdep_is_held(&local->sta_mtx));
 while (sta) {
  if ((sta->sdata == sdata ||
       (sta->sdata->bss && sta->sdata->bss == sdata->bss)) &&
      ether_addr_equal(sta->sta.addr, addr))
   break;
  sta = rcu_dereference_check(sta->hnext,
         lockdep_is_held(&local->sta_mtx));
 }
 return sta;
}
