
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct sta_info {TYPE_2__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_3__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;


 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sta_info_insert_check(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;






 if (unlikely(!ieee80211_sdata_running(sdata)))
  return -ENETDOWN;

 if (WARN_ON(ether_addr_equal(sta->sta.addr, sdata->vif.addr) ||
      is_multicast_ether_addr(sta->sta.addr)))
  return -EINVAL;

 return 0;
}
