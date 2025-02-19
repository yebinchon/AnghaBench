
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regd; } ;
struct regulatory_request {int country_ie_env; int wiphy_idx; } ;


 int ENVIRON_ANY ;
 int WIPHY_IDX_INVALID ;
 struct regulatory_request* get_last_request () ;
 int get_wiphy_regdom (struct wiphy*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int rcu_free_regdom (int ) ;
 int reg_dev_ignore_cell_hint (struct wiphy*) ;
 int reg_mutex ;
 int reg_num_devs_support_basehint ;
 struct wiphy* wiphy_idx_to_wiphy (int ) ;

void wiphy_regulatory_deregister(struct wiphy *wiphy)
{
 struct wiphy *request_wiphy = ((void*)0);
 struct regulatory_request *lr;

 mutex_lock(&reg_mutex);
 lr = get_last_request();

 if (!reg_dev_ignore_cell_hint(wiphy))
  reg_num_devs_support_basehint--;

 rcu_free_regdom(get_wiphy_regdom(wiphy));
 rcu_assign_pointer(wiphy->regd, ((void*)0));

 if (lr)
  request_wiphy = wiphy_idx_to_wiphy(lr->wiphy_idx);

 if (!request_wiphy || request_wiphy != wiphy)
  goto out;

 lr->wiphy_idx = WIPHY_IDX_INVALID;
 lr->country_ie_env = ENVIRON_ANY;
out:
 mutex_unlock(&reg_mutex);
}
