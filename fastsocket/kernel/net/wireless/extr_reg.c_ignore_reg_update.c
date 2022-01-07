
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int flags; int regd; } ;
struct regulatory_request {int alpha2; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 int NL80211_REGDOM_SET_BY_CORE ;
 int NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 int REG_DBG_PRINT (char*,int ) ;
 int WIPHY_FLAG_CUSTOM_REGULATORY ;
 int WIPHY_FLAG_STRICT_REGULATORY ;
 struct regulatory_request* get_last_request () ;
 int is_world_regdom (int ) ;
 int reg_dev_ignore_cell_hint (struct wiphy*) ;
 int reg_initiator_name (int) ;
 scalar_t__ reg_request_cell_base (struct regulatory_request*) ;

__attribute__((used)) static bool ignore_reg_update(struct wiphy *wiphy,
         enum nl80211_reg_initiator initiator)
{
 struct regulatory_request *lr = get_last_request();

 if (!lr) {
  REG_DBG_PRINT("Ignoring regulatory request %s since last_request is not set\n",
         reg_initiator_name(initiator));
  return 1;
 }

 if (initiator == NL80211_REGDOM_SET_BY_CORE &&
     wiphy->flags & WIPHY_FLAG_CUSTOM_REGULATORY) {
  REG_DBG_PRINT("Ignoring regulatory request %s since the driver uses its own custom regulatory domain\n",
         reg_initiator_name(initiator));
  return 1;
 }





 if (wiphy->flags & WIPHY_FLAG_STRICT_REGULATORY && !wiphy->regd &&
     initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE &&
     !is_world_regdom(lr->alpha2)) {
  REG_DBG_PRINT("Ignoring regulatory request %s since the driver requires its own regulatory domain to be set first\n",
         reg_initiator_name(initiator));
  return 1;
 }

 if (reg_request_cell_base(lr))
  return reg_dev_ignore_cell_hint(wiphy);

 return 0;
}
