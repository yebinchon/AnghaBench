
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genl_unregister_family (int *) ;
 int netlink_unregister_notifier (int *) ;
 int nl80211_fam ;
 int nl80211_netlink_notifier ;

void nl80211_exit(void)
{
 netlink_unregister_notifier(&nl80211_netlink_notifier);
 genl_unregister_family(&nl80211_fam);
}
