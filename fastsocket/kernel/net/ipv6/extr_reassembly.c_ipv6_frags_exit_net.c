
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frags; } ;
struct net {TYPE_1__ ipv6; } ;


 int inet_frags_exit_net (int *,int *) ;
 int ip6_frags ;
 int ip6_frags_ns_sysctl_unregister (struct net*) ;

__attribute__((used)) static void ipv6_frags_exit_net(struct net *net)
{
 ip6_frags_ns_sysctl_unregister(net);
 inet_frags_exit_net(&net->ipv6.frags, &ip6_frags);
}
