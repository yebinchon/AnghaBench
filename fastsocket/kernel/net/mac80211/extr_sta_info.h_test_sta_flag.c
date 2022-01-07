
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int _flags; } ;
typedef enum ieee80211_sta_info_flags { ____Placeholder_ieee80211_sta_info_flags } ieee80211_sta_info_flags ;


 int test_bit (int,int *) ;

__attribute__((used)) static inline int test_sta_flag(struct sta_info *sta,
    enum ieee80211_sta_info_flags flag)
{
 return test_bit(flag, &sta->_flags);
}
