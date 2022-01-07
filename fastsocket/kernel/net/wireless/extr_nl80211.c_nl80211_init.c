
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int genl_register_family_with_ops (int *,int ,int ) ;
 int genl_register_mc_group (int *,int *) ;
 int genl_unregister_family (int *) ;
 int netlink_register_notifier (int *) ;
 int nl80211_config_mcgrp ;
 int nl80211_fam ;
 int nl80211_mlme_mcgrp ;
 int nl80211_netlink_notifier ;
 int nl80211_ops ;
 int nl80211_regulatory_mcgrp ;
 int nl80211_scan_mcgrp ;
 int nl80211_testmode_mcgrp ;

int nl80211_init(void)
{
 int err;

 err = genl_register_family_with_ops(&nl80211_fam,
  nl80211_ops, ARRAY_SIZE(nl80211_ops));
 if (err)
  return err;

 err = genl_register_mc_group(&nl80211_fam, &nl80211_config_mcgrp);
 if (err)
  goto err_out;

 err = genl_register_mc_group(&nl80211_fam, &nl80211_scan_mcgrp);
 if (err)
  goto err_out;

 err = genl_register_mc_group(&nl80211_fam, &nl80211_regulatory_mcgrp);
 if (err)
  goto err_out;

 err = genl_register_mc_group(&nl80211_fam, &nl80211_mlme_mcgrp);
 if (err)
  goto err_out;







 err = netlink_register_notifier(&nl80211_netlink_notifier);
 if (err)
  goto err_out;

 return 0;
 err_out:
 genl_unregister_family(&nl80211_fam);
 return err;
}
