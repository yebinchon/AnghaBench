
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_hw {int dummy; } ;
struct dev_addr_list {int dummy; } ;



__attribute__((used)) static u64 wbsoft_prepare_multicast(struct ieee80211_hw *hw, int mc_count,
        struct dev_addr_list *mc_list)
{
 return mc_count;
}
