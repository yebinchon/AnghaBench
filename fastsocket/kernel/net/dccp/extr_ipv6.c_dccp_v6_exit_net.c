
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v6_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;


 int inet_ctl_sock_destroy (int ) ;

__attribute__((used)) static void dccp_v6_exit_net(struct net *net)
{
 inet_ctl_sock_destroy(net->dccp.v6_ctl_sk);
}
