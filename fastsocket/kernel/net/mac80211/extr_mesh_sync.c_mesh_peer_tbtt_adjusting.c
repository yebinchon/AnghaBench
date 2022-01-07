
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802_11_elems {TYPE_1__* mesh_config; } ;
struct TYPE_2__ {int meshconf_cap; } ;


 int IEEE80211_MESHCONF_CAPAB_TBTT_ADJUSTING ;

__attribute__((used)) static bool mesh_peer_tbtt_adjusting(struct ieee802_11_elems *ie)
{
 return (ie->mesh_config->meshconf_cap &
   IEEE80211_MESHCONF_CAPAB_TBTT_ADJUSTING) != 0;
}
