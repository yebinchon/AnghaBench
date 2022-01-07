
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;


 int NL80211_REGDOM_SET_BY_CORE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_dev_ignore_cell_hint (struct wiphy*) ;
 int reg_mutex ;
 int reg_num_devs_support_basehint ;
 int wiphy_update_regulatory (struct wiphy*,int ) ;

void wiphy_regulatory_register(struct wiphy *wiphy)
{
 mutex_lock(&reg_mutex);

 if (!reg_dev_ignore_cell_hint(wiphy))
  reg_num_devs_support_basehint++;

 wiphy_update_regulatory(wiphy, NL80211_REGDOM_SET_BY_CORE);

 mutex_unlock(&reg_mutex);
}
