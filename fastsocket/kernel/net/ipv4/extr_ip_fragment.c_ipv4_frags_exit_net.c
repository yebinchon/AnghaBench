
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frags; } ;
struct net {TYPE_1__ ipv4; } ;


 int inet_frags_exit_net (int *,int *) ;
 int ip4_frags ;
 int ip4_frags_ns_ctl_unregister (struct net*) ;

__attribute__((used)) static void ipv4_frags_exit_net(struct net *net)
{
 ip4_frags_ns_ctl_unregister(net);
 inet_frags_exit_net(&net->ipv4.frags, &ip4_frags);
}
