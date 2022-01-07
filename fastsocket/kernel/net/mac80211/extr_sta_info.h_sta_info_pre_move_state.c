
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;


 int WARN_ON_ONCE (int) ;
 int WLAN_STA_INSERTED ;
 int sta_info_move_state (struct sta_info*,int) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static inline void sta_info_pre_move_state(struct sta_info *sta,
        enum ieee80211_sta_state new_state)
{
 int ret;

 WARN_ON_ONCE(test_sta_flag(sta, WLAN_STA_INSERTED));

 ret = sta_info_move_state(sta, new_state);
 WARN_ON_ONCE(ret);
}
