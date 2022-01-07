
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg80211_mutex ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void assert_cfg80211_lock(void)
{
 lockdep_assert_held(&cfg80211_mutex);
}
