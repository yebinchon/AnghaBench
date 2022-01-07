
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct sta_info {int hnext; TYPE_1__ sta; } ;
struct ieee80211_local {int sta_mtx; int * sta_hash; } ;


 int ENOENT ;
 size_t STA_HASH (int ) ;
 int lockdep_is_held (int *) ;
 struct sta_info* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int ) ;
 struct sta_info* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int sta_info_hash_del(struct ieee80211_local *local,
        struct sta_info *sta)
{
 struct sta_info *s;

 s = rcu_dereference_protected(local->sta_hash[STA_HASH(sta->sta.addr)],
          lockdep_is_held(&local->sta_mtx));
 if (!s)
  return -ENOENT;
 if (s == sta) {
  rcu_assign_pointer(local->sta_hash[STA_HASH(sta->sta.addr)],
       s->hnext);
  return 0;
 }

 while (rcu_access_pointer(s->hnext) &&
        rcu_access_pointer(s->hnext) != sta)
  s = rcu_dereference_protected(s->hnext,
     lockdep_is_held(&local->sta_mtx));
 if (rcu_access_pointer(s->hnext)) {
  rcu_assign_pointer(s->hnext, sta->hnext);
  return 0;
 }

 return -ENOENT;
}
