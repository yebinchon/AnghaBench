
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
typedef struct regulatory_request {scalar_t__ initiator; int intersect; int processed; int * alpha2; } const regulatory_request ;
struct ieee80211_regdomain {scalar_t__ initiator; int intersect; int processed; int * alpha2; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 int IS_ERR (struct regulatory_request const*) ;
 scalar_t__ NL80211_REGDOM_SET_BY_DRIVER ;
 scalar_t__ NL80211_REGDOM_SET_BY_USER ;
 int PTR_ERR (struct regulatory_request const*) ;
 int REG_REQ_ALREADY_SET ;
 int REG_REQ_IGNORE ;


 scalar_t__ call_crda (int *) ;
 struct regulatory_request const core_request_world ;
 int get_cfg80211_regdom () ;
 struct regulatory_request* get_last_request () ;
 int get_reg_request_treatment (struct wiphy*,struct regulatory_request const*) ;
 int kfree (struct regulatory_request const*) ;
 int kfree_rcu (struct regulatory_request const*,int ) ;
 int last_request ;
 int nl80211_send_reg_change_event (struct regulatory_request const*) ;
 int rcu_assign_pointer (int ,struct regulatory_request const*) ;
 int rcu_head ;
 struct regulatory_request* reg_copy_regd (int ) ;
 int reg_set_request_processed () ;
 int * user_alpha2 ;

__attribute__((used)) static enum reg_request_treatment
__regulatory_hint(struct wiphy *wiphy,
    struct regulatory_request *pending_request)
{
 const struct ieee80211_regdomain *regd;
 bool intersect = 0;
 enum reg_request_treatment treatment;
 struct regulatory_request *lr;

 treatment = get_reg_request_treatment(wiphy, pending_request);

 switch (treatment) {
 case 129:
  if (pending_request->initiator ==
      NL80211_REGDOM_SET_BY_DRIVER) {
   regd = reg_copy_regd(get_cfg80211_regdom());
   if (IS_ERR(regd)) {
    kfree(pending_request);
    return PTR_ERR(regd);
   }
   rcu_assign_pointer(wiphy->regd, regd);
  }
  intersect = 1;
  break;
 case 128:
  break;
 default:





  if (treatment == REG_REQ_ALREADY_SET &&
      pending_request->initiator == NL80211_REGDOM_SET_BY_DRIVER) {
   regd = reg_copy_regd(get_cfg80211_regdom());
   if (IS_ERR(regd)) {
    kfree(pending_request);
    return REG_REQ_IGNORE;
   }
   treatment = REG_REQ_ALREADY_SET;
   rcu_assign_pointer(wiphy->regd, regd);
   goto new_request;
  }
  kfree(pending_request);
  return treatment;
 }

new_request:
 lr = get_last_request();
 if (lr != &core_request_world && lr)
  kfree_rcu(lr, rcu_head);

 pending_request->intersect = intersect;
 pending_request->processed = 0;
 rcu_assign_pointer(last_request, pending_request);
 lr = pending_request;

 pending_request = ((void*)0);

 if (lr->initiator == NL80211_REGDOM_SET_BY_USER) {
  user_alpha2[0] = lr->alpha2[0];
  user_alpha2[1] = lr->alpha2[1];
 }


 if (treatment != 128 && treatment != 129) {





  if (treatment == REG_REQ_ALREADY_SET) {
   nl80211_send_reg_change_event(lr);
   reg_set_request_processed();
  }
  return treatment;
 }

 if (call_crda(lr->alpha2))
  return REG_REQ_IGNORE;
 return 128;
}
