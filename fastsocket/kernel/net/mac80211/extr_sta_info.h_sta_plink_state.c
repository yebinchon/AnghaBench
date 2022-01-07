
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int plink_state; } ;
typedef enum nl80211_plink_state { ____Placeholder_nl80211_plink_state } nl80211_plink_state ;


 int NL80211_PLINK_LISTEN ;

__attribute__((used)) static inline enum nl80211_plink_state sta_plink_state(struct sta_info *sta)
{



 return NL80211_PLINK_LISTEN;
}
