
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_internal_bss {int hold; } ;


 int WARN_ON (int) ;
 int atomic_dec_return (int *) ;

__attribute__((used)) static inline void cfg80211_unhold_bss(struct cfg80211_internal_bss *bss)
{
 int r = atomic_dec_return(&bss->hold);
 WARN_ON(r < 0);
}
