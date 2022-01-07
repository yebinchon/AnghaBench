
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6_tnl_net {int dummy; } ;


 int ip6_tnl_destroy_tunnels (struct ip6_tnl_net*) ;
 int ip6_tnl_net_id ;
 int kfree (struct ip6_tnl_net*) ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ip6_tnl_exit_net(struct net *net)
{
 struct ip6_tnl_net *ip6n;

 ip6n = net_generic(net, ip6_tnl_net_id);
 rtnl_lock();
 ip6_tnl_destroy_tunnels(ip6n);
 rtnl_unlock();
 kfree(ip6n);
}
