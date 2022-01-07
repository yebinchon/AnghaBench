
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcp_sk; } ;
struct net {TYPE_1__ ipv6; } ;


 int IPPROTO_TCP ;
 int PF_INET6 ;
 int SOCK_RAW ;
 int inet_ctl_sock_create (int *,int ,int ,int ,struct net*) ;

__attribute__((used)) static int tcpv6_net_init(struct net *net)
{
 return inet_ctl_sock_create(&net->ipv6.tcp_sk, PF_INET6,
        SOCK_RAW, IPPROTO_TCP, net);
}
