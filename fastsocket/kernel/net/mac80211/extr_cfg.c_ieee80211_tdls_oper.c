
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int flags; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;


 int EINVAL ;
 int ENOLINK ;
 int ENOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;





 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WLAN_STA_TDLS_PEER_AUTH ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_sta_flag (struct sta_info*,int ) ;
 int sta_info_destroy_addr (struct ieee80211_sub_if_data*,int *) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int *) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,int,int *) ;

__attribute__((used)) static int ieee80211_tdls_oper(struct wiphy *wiphy, struct net_device *dev,
          u8 *peer, enum nl80211_tdls_operation oper)
{
 struct sta_info *sta;
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);

 if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
  return -ENOTSUPP;

 if (sdata->vif.type != NL80211_IFTYPE_STATION)
  return -EINVAL;

 tdls_dbg(sdata, "TDLS oper %d peer %pM\n", oper, peer);

 switch (oper) {
 case 130:
  rcu_read_lock();
  sta = sta_info_get(sdata, peer);
  if (!sta) {
   rcu_read_unlock();
   return -ENOLINK;
  }

  set_sta_flag(sta, WLAN_STA_TDLS_PEER_AUTH);
  rcu_read_unlock();
  break;
 case 132:
  return sta_info_destroy_addr(sdata, peer);
 case 128:
 case 129:
 case 131:

  return -ENOTSUPP;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
