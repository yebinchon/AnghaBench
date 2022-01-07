
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v6_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;


 int IPPROTO_DCCP ;
 int PF_INET6 ;
 int SOCK_DCCP ;
 int inet_ctl_sock_create (int *,int ,int ,int ,struct net*) ;

__attribute__((used)) static int dccp_v6_init_net(struct net *net)
{
 int err;

 err = inet_ctl_sock_create(&net->dccp.v6_ctl_sk, PF_INET6,
       SOCK_DCCP, IPPROTO_DCCP, net);
 return err;
}
