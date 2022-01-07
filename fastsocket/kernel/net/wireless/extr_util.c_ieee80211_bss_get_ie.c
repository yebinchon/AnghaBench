
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_bss_ies {int len; int data; } ;
struct cfg80211_bss {int ies; } ;


 int const* cfg80211_find_ie (int ,int ,int ) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;

const u8 *ieee80211_bss_get_ie(struct cfg80211_bss *bss, u8 ie)
{
 const struct cfg80211_bss_ies *ies;

 ies = rcu_dereference(bss->ies);
 if (!ies)
  return ((void*)0);

 return cfg80211_find_ie(ie, ies->data, ies->len);
}
