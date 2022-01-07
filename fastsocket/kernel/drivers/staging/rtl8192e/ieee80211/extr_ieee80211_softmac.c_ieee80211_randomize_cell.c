
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bssid; } ;
struct ieee80211_device {TYPE_1__ current_network; } ;


 int ETH_ALEN ;
 int get_random_bytes (int*,int ) ;

inline void ieee80211_randomize_cell(struct ieee80211_device *ieee)
{

 get_random_bytes(ieee->current_network.bssid, ETH_ALEN);




 ieee->current_network.bssid[0] &= ~0x01;
 ieee->current_network.bssid[0] |= 0x02;
}
