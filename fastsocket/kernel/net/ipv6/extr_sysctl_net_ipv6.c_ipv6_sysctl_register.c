
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int * ip6_header ;
 int ipv6_rotable ;
 int ipv6_sysctl_net_ops ;
 int net_ipv6_ctl_path ;
 int * register_net_sysctl_rotable (int ,int ) ;
 int register_pernet_subsys (int *) ;
 int unregister_net_sysctl_table (int *) ;

int ipv6_sysctl_register(void)
{
 int err = -ENOMEM;

 ip6_header = register_net_sysctl_rotable(net_ipv6_ctl_path, ipv6_rotable);
 if (ip6_header == ((void*)0))
  goto out;

 err = register_pernet_subsys(&ipv6_sysctl_net_ops);
 if (err)
  goto err_pernet;
out:
 return err;

err_pernet:
 unregister_net_sysctl_table(ip6_header);
 goto out;
}
