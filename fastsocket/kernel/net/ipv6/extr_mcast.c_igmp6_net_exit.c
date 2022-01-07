
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;


 int igmp6_proc_exit (struct net*) ;
 int inet_ctl_sock_destroy (int ) ;

__attribute__((used)) static void igmp6_net_exit(struct net *net)
{
 inet_ctl_sock_destroy(net->ipv6.igmp_sk);
 igmp6_proc_exit(net);
}
