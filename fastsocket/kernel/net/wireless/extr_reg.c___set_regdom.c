
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {scalar_t__ regd; } ;
struct regulatory_request {scalar_t__ initiator; int intersect; int wiphy_idx; } ;
struct ieee80211_regdomain {int alpha2; } ;


 int EALREADY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ieee80211_regdomain const*) ;
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 scalar_t__ NL80211_REGDOM_SET_BY_DRIVER ;
 int PTR_ERR (struct ieee80211_regdomain const*) ;
 int get_cfg80211_regdom () ;
 struct regulatory_request* get_last_request () ;
 struct ieee80211_regdomain* get_wiphy_regdom (struct wiphy*) ;
 int is_alpha2_set (int ) ;
 int is_an_alpha2 (int ) ;
 int is_unknown_alpha2 (int ) ;
 int is_valid_rd (struct ieee80211_regdomain const*) ;
 scalar_t__ is_world_regdom (int ) ;
 int kfree (struct ieee80211_regdomain const*) ;
 int pr_err (char*) ;
 int print_regdomain_info (struct ieee80211_regdomain const*) ;
 int rcu_assign_pointer (scalar_t__,struct ieee80211_regdomain const*) ;
 int rcu_free_regdom (struct ieee80211_regdomain const*) ;
 struct ieee80211_regdomain* reg_copy_regd (struct ieee80211_regdomain const*) ;
 int reg_is_valid_request (int ) ;
 int reg_timeout ;
 int regdom_changes (int ) ;
 struct ieee80211_regdomain* regdom_intersect (struct ieee80211_regdomain const*,int ) ;
 int reset_regdomains (int,struct ieee80211_regdomain const*) ;
 int schedule_delayed_work (int *,int ) ;
 int update_world_regdomain (struct ieee80211_regdomain const*) ;
 struct wiphy* wiphy_idx_to_wiphy (int ) ;

__attribute__((used)) static int __set_regdom(const struct ieee80211_regdomain *rd)
{
 const struct ieee80211_regdomain *regd;
 const struct ieee80211_regdomain *intersected_rd = ((void*)0);
 struct wiphy *request_wiphy;
 struct regulatory_request *lr = get_last_request();



 if (!reg_is_valid_request(rd->alpha2))
  return -EINVAL;

 if (is_world_regdom(rd->alpha2)) {
  update_world_regdomain(rd);
  return 0;
 }

 if (!is_alpha2_set(rd->alpha2) && !is_an_alpha2(rd->alpha2) &&
     !is_unknown_alpha2(rd->alpha2))
  return -EINVAL;






 if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE) {




  if (!regdom_changes(rd->alpha2))
   return -EALREADY;
 }
 if (!is_valid_rd(rd)) {
  pr_err("Invalid regulatory domain detected:\n");
  print_regdomain_info(rd);
  return -EINVAL;
 }

 request_wiphy = wiphy_idx_to_wiphy(lr->wiphy_idx);
 if (!request_wiphy &&
     (lr->initiator == NL80211_REGDOM_SET_BY_DRIVER ||
      lr->initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE)) {
  schedule_delayed_work(&reg_timeout, 0);
  return -ENODEV;
 }

 if (!lr->intersect) {
  if (lr->initiator != NL80211_REGDOM_SET_BY_DRIVER) {
   reset_regdomains(0, rd);
   return 0;
  }
  if (request_wiphy->regd)
   return -EALREADY;

  regd = reg_copy_regd(rd);
  if (IS_ERR(regd))
   return PTR_ERR(regd);

  rcu_assign_pointer(request_wiphy->regd, regd);
  reset_regdomains(0, rd);
  return 0;
 }



 if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE) {
  intersected_rd = regdom_intersect(rd, get_cfg80211_regdom());
  if (!intersected_rd)
   return -EINVAL;






  if (lr->initiator == NL80211_REGDOM_SET_BY_DRIVER) {
   const struct ieee80211_regdomain *tmp;

   tmp = get_wiphy_regdom(request_wiphy);
   rcu_assign_pointer(request_wiphy->regd, rd);
   rcu_free_regdom(tmp);
  } else {
   kfree(rd);
  }

  rd = ((void*)0);

  reset_regdomains(0, intersected_rd);

  return 0;
 }

 return -EINVAL;
}
