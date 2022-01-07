
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {struct sock* rtnl; } ;


 int ENOMEM ;
 int NETLINK_ROUTE ;
 int RTNLGRP_MAX ;
 int THIS_MODULE ;
 struct sock* netlink_kernel_create (struct net*,int ,int ,int ,int *,int ) ;
 int rtnetlink_rcv ;
 int rtnl_mutex ;

__attribute__((used)) static int rtnetlink_net_init(struct net *net)
{
 struct sock *sk;
 sk = netlink_kernel_create(net, NETLINK_ROUTE, RTNLGRP_MAX,
       rtnetlink_rcv, &rtnl_mutex, THIS_MODULE);
 if (!sk)
  return -ENOMEM;
 net->rtnl = sk;
 return 0;
}
