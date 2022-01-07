
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int initiator; int intersect; } ;
struct ieee80211_regdomain {int dummy; } ;


 int EALREADY ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int __set_regdom (struct ieee80211_regdomain const*) ;
 struct ieee80211_regdomain const* get_cfg80211_regdom () ;
 struct regulatory_request* get_last_request () ;
 int kfree (struct ieee80211_regdomain const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nl80211_send_reg_change_event (struct regulatory_request*) ;
 int print_regdomain (struct ieee80211_regdomain const*) ;
 int reg_mutex ;
 int reg_set_request_processed () ;
 int update_all_wiphy_regulatory (int ) ;

int set_regdom(const struct ieee80211_regdomain *rd)
{
 struct regulatory_request *lr;
 int r;

 mutex_lock(&reg_mutex);
 lr = get_last_request();


 r = __set_regdom(rd);
 if (r) {
  if (r == -EALREADY)
   reg_set_request_processed();

  kfree(rd);
  goto out;
 }


 if (WARN_ON(!lr->intersect && rd != get_cfg80211_regdom())) {
  r = -EINVAL;
  goto out;
 }


 update_all_wiphy_regulatory(lr->initiator);

 print_regdomain(get_cfg80211_regdom());

 nl80211_send_reg_change_event(lr);

 reg_set_request_processed();

 out:
 mutex_unlock(&reg_mutex);

 return r;
}
