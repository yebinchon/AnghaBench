
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (char*) ;
 int genl_register_family_with_ops (int *,int *,int) ;
 int tipc_genl_family ;
 int tipc_genl_family_registered ;
 int tipc_genl_ops ;

int tipc_netlink_start(void)
{
 int res;

 res = genl_register_family_with_ops(&tipc_genl_family,
  &tipc_genl_ops, 1);
 if (res) {
  err("Failed to register netlink interface\n");
  return res;
 }

 tipc_genl_family_registered = 1;
 return 0;
}
