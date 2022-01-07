
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ndisc_sk; } ;
struct net {TYPE_1__ ipv6; } ;


 int inet_ctl_sock_destroy (int ) ;

__attribute__((used)) static void ndisc_net_exit(struct net *net)
{
 inet_ctl_sock_destroy(net->ipv6.ndisc_sk);
}
