
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {int dummy; } ;


 int ENOMEM ;
 int * ip6_base ;
 int net_ipv6_ctl_path ;
 int * register_sysctl_paths (int ,struct ctl_table*) ;

int ipv6_static_sysctl_register(void)
{
 static struct ctl_table empty[1];
 ip6_base = register_sysctl_paths(net_ipv6_ctl_path, empty);
 if (ip6_base == ((void*)0))
  return -ENOMEM;
 return 0;
}
