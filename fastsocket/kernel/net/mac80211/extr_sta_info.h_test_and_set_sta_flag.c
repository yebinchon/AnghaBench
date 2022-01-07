
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int _flags; } ;
typedef enum ieee80211_sta_info_flags { ____Placeholder_ieee80211_sta_info_flags } ieee80211_sta_info_flags ;


 int WARN_ON (int) ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static inline int test_and_set_sta_flag(struct sta_info *sta,
     enum ieee80211_sta_info_flags flag)
{
 WARN_ON(flag == WLAN_STA_AUTH ||
  flag == WLAN_STA_ASSOC ||
  flag == WLAN_STA_AUTHORIZED);
 return test_and_set_bit(flag, &sta->_flags);
}
