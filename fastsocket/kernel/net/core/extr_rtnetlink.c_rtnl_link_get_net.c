
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 size_t IFLA_NET_NS_FD ;
 size_t IFLA_NET_NS_PID ;
 struct net* get_net (struct net*) ;
 struct net* get_net_ns_by_fd (int ) ;
 struct net* get_net_ns_by_pid (int ) ;
 int nla_get_u32 (struct nlattr*) ;

struct net *rtnl_link_get_net(struct net *src_net, struct nlattr *tb[])
{
 struct net *net;



 if (tb[IFLA_NET_NS_PID])
  net = get_net_ns_by_pid(nla_get_u32(tb[IFLA_NET_NS_PID]));
 else if (tb[IFLA_NET_NS_FD])
  net = get_net_ns_by_fd(nla_get_u32(tb[IFLA_NET_NS_FD]));
 else
  net = get_net(src_net);
 return net;
}
