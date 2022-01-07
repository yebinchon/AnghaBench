
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int dummy; } ;
struct net {int dummy; } ;


 int __rtnl_kill_links (struct net*,struct rtnl_link_ops*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void rtnl_kill_links(struct net *net, struct rtnl_link_ops *ops)
{
 rtnl_lock();
 __rtnl_kill_links(net, ops);
 rtnl_unlock();
}
