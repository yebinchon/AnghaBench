
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int ieee80211_add_pending_skbs_fn (struct ieee80211_local*,struct sk_buff_head*,int *,int *) ;

__attribute__((used)) static inline void ieee80211_add_pending_skbs(struct ieee80211_local *local,
           struct sk_buff_head *skbs)
{
 ieee80211_add_pending_skbs_fn(local, skbs, ((void*)0), ((void*)0));
}
