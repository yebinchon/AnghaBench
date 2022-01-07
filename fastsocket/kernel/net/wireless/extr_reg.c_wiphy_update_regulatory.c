
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int * bands; } ;
struct regulatory_request {int dfs_region; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_2__ {int dfs_region; } ;


 int IEEE80211_NUM_BANDS ;
 TYPE_1__* get_cfg80211_regdom () ;
 struct regulatory_request* get_last_request () ;
 int handle_band (struct wiphy*,int,int ) ;
 scalar_t__ ignore_reg_update (struct wiphy*,int) ;
 int reg_process_beacons (struct wiphy*) ;
 int reg_process_ht_flags (struct wiphy*) ;
 int stub1 (struct wiphy*,struct regulatory_request*) ;

__attribute__((used)) static void wiphy_update_regulatory(struct wiphy *wiphy,
        enum nl80211_reg_initiator initiator)
{
 enum ieee80211_band band;
 struct regulatory_request *lr = get_last_request();

 if (ignore_reg_update(wiphy, initiator))
  return;

 lr->dfs_region = get_cfg80211_regdom()->dfs_region;

 for (band = 0; band < IEEE80211_NUM_BANDS; band++)
  handle_band(wiphy, initiator, wiphy->bands[band]);

 reg_process_beacons(wiphy);
 reg_process_ht_flags(wiphy);

 if (wiphy->reg_notifier)
  wiphy->reg_notifier(wiphy, lr);
}
