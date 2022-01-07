
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int rcu_barrier () ;
 int sta_info_flush_cleanup (struct ieee80211_sub_if_data*) ;
 int sta_info_flush_defer (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static inline int sta_info_flush(struct ieee80211_sub_if_data *sdata)
{
 int ret = sta_info_flush_defer(sdata);

 rcu_barrier();
 sta_info_flush_cleanup(sdata);

 return ret;
}
