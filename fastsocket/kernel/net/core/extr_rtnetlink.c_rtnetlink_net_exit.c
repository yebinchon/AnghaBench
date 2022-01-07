
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int * rtnl; } ;


 int netlink_kernel_release (int *) ;

__attribute__((used)) static void rtnetlink_net_exit(struct net *net)
{
 netlink_kernel_release(net->rtnl);
 net->rtnl = ((void*)0);
}
