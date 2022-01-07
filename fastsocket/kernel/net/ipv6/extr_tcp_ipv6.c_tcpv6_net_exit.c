
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcp_sk; } ;
struct net {TYPE_1__ ipv6; } ;


 int AF_INET6 ;
 int inet_ctl_sock_destroy (int ) ;
 int inet_twsk_purge (struct net*,int *,int *,int ) ;
 int tcp_death_row ;
 int tcp_hashinfo ;

__attribute__((used)) static void tcpv6_net_exit(struct net *net)
{
 inet_ctl_sock_destroy(net->ipv6.tcp_sk);
 inet_twsk_purge(net, &tcp_hashinfo, &tcp_death_row, AF_INET6);
}
