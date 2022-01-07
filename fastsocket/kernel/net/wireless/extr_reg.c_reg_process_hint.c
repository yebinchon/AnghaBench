
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int flags; } ;
struct regulatory_request {scalar_t__ wiphy_idx; int alpha2; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 int NL80211_REGDOM_SET_BY_DRIVER ;
 int NL80211_REGDOM_SET_BY_USER ;

 scalar_t__ WARN_ON (int) ;
 int WIPHY_FLAG_STRICT_REGULATORY ;
 scalar_t__ WIPHY_IDX_INVALID ;
 int __regulatory_hint (struct wiphy*,struct regulatory_request*) ;
 int kfree (struct regulatory_request*) ;
 int msecs_to_jiffies (int) ;
 int reg_timeout ;
 int schedule_delayed_work (int *,int ) ;
 struct wiphy* wiphy_idx_to_wiphy (scalar_t__) ;
 int wiphy_update_regulatory (struct wiphy*,int) ;

__attribute__((used)) static void reg_process_hint(struct regulatory_request *reg_request,
        enum nl80211_reg_initiator reg_initiator)
{
 struct wiphy *wiphy = ((void*)0);

 if (WARN_ON(!reg_request->alpha2))
  return;

 if (reg_request->wiphy_idx != WIPHY_IDX_INVALID)
  wiphy = wiphy_idx_to_wiphy(reg_request->wiphy_idx);

 if (reg_initiator == NL80211_REGDOM_SET_BY_DRIVER && !wiphy) {
  kfree(reg_request);
  return;
 }

 switch (__regulatory_hint(wiphy, reg_request)) {
 case 128:

  if (wiphy && wiphy->flags & WIPHY_FLAG_STRICT_REGULATORY)
   wiphy_update_regulatory(wiphy, reg_initiator);
  break;
 default:
  if (reg_initiator == NL80211_REGDOM_SET_BY_USER)
   schedule_delayed_work(&reg_timeout,
           msecs_to_jiffies(3142));
  break;
 }
}
