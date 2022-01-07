
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_internal_bss {int hold; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void cfg80211_hold_bss(struct cfg80211_internal_bss *bss)
{
 atomic_inc(&bss->hold);
}
