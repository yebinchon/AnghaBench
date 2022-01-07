
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int mtx; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void ASSERT_WORK_MTX(struct ieee80211_local *local)
{
 lockdep_assert_held(&local->mtx);
}
