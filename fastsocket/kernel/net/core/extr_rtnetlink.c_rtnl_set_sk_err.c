
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct net {struct sock* rtnl; } ;


 int netlink_set_err (struct sock*,int ,int ,int) ;

void rtnl_set_sk_err(struct net *net, u32 group, int error)
{
 struct sock *rtnl = net->rtnl;

 netlink_set_err(rtnl, 0, group, error);
}
