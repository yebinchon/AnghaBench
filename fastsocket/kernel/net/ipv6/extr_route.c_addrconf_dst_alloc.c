
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int* metrics; int obsolete; int __refcnt; int output; int input; int flags; } ;
struct TYPE_8__ {TYPE_4__ dst; } ;
struct TYPE_7__ {int plen; int addr; } ;
struct rt6_info {int rt6i_flags; TYPE_3__ u; int rt6i_table; TYPE_2__ rt6i_dst; struct neighbour* rt6i_nexthop; int rt6i_gateway; int rt6i_dev; struct inet6_dev* rt6i_idev; } ;
struct TYPE_6__ {int ip6_dst_ops; } ;
struct net {int loopback_dev; TYPE_1__ ipv6; } ;
struct neighbour {int dummy; } ;
struct inet6_dev {int dev; } ;
struct in6_addr {int dummy; } ;


 int DST_HOST ;
 int ENOMEM ;
 struct rt6_info* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct neighbour*) ;
 int RT6_TABLE_LOCAL ;
 int RTAX_ADVMSS ;
 int RTAX_HOPLIMIT ;
 int RTAX_MTU ;
 int RTF_ANYCAST ;
 int RTF_LOCAL ;
 int RTF_NONEXTHOP ;
 int RTF_UP ;
 int atomic_set (int *,int) ;
 int dev_hold (int ) ;
 struct net* dev_net (int ) ;
 int dst_free (TYPE_4__*) ;
 int dst_mtu (TYPE_4__*) ;
 int fib6_get_table (struct net*,int ) ;
 int in6_dev_hold (struct inet6_dev*) ;
 struct rt6_info* ip6_dst_alloc (int *) ;
 int ip6_input ;
 int ip6_output ;
 int ipv6_addr_copy (int *,struct in6_addr const*) ;
 int ipv6_advmss (struct net*,int ) ;
 int ipv6_get_mtu (int ) ;
 struct neighbour* ndisc_get_neigh (int ,int *) ;

struct rt6_info *addrconf_dst_alloc(struct inet6_dev *idev,
        const struct in6_addr *addr,
        int anycast)
{
 struct net *net = dev_net(idev->dev);
 struct rt6_info *rt = ip6_dst_alloc(&net->ipv6.ip6_dst_ops);
 struct neighbour *neigh;

 if (rt == ((void*)0))
  return ERR_PTR(-ENOMEM);

 dev_hold(net->loopback_dev);
 in6_dev_hold(idev);

 rt->u.dst.flags = DST_HOST;
 rt->u.dst.input = ip6_input;
 rt->u.dst.output = ip6_output;
 rt->rt6i_dev = net->loopback_dev;
 rt->rt6i_idev = idev;
 rt->u.dst.metrics[RTAX_MTU-1] = ipv6_get_mtu(rt->rt6i_dev);
 rt->u.dst.metrics[RTAX_ADVMSS-1] = ipv6_advmss(net, dst_mtu(&rt->u.dst));
 rt->u.dst.metrics[RTAX_HOPLIMIT-1] = -1;
 rt->u.dst.obsolete = -1;

 rt->rt6i_flags = RTF_UP | RTF_NONEXTHOP;
 if (anycast)
  rt->rt6i_flags |= RTF_ANYCAST;
 else
  rt->rt6i_flags |= RTF_LOCAL;
 neigh = ndisc_get_neigh(rt->rt6i_dev, &rt->rt6i_gateway);
 if (IS_ERR(neigh)) {
  dst_free(&rt->u.dst);






  return (struct rt6_info *) neigh;
 }
 rt->rt6i_nexthop = neigh;

 ipv6_addr_copy(&rt->rt6i_dst.addr, addr);
 rt->rt6i_dst.plen = 128;
 rt->rt6i_table = fib6_get_table(net, RT6_TABLE_LOCAL);

 atomic_set(&rt->u.dst.__refcnt, 1);

 return rt;
}
