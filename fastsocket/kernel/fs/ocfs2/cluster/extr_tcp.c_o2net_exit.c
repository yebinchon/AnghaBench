
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int ) ;
 int o2net_debugfs_exit () ;
 int o2net_hand ;
 int o2net_keep_req ;
 int o2net_keep_resp ;
 int o2quo_exit () ;

void o2net_exit(void)
{
 o2quo_exit();
 kfree(o2net_hand);
 kfree(o2net_keep_req);
 kfree(o2net_keep_resp);
 o2net_debugfs_exit();
}
