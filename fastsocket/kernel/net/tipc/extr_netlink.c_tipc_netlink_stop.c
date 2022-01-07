
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genl_unregister_family (int *) ;
 int tipc_genl_family ;
 scalar_t__ tipc_genl_family_registered ;

void tipc_netlink_stop(void)
{
 if (!tipc_genl_family_registered)
  return;

 genl_unregister_family(&tipc_genl_family);
 tipc_genl_family_registered = 0;
}
