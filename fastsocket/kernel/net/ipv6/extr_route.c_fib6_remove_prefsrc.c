
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ plen; int addr; } ;
struct rt6_info {TYPE_2__ rt6i_prefsrc; scalar_t__ rt6i_dev; } ;
typedef void net_device ;
struct TYPE_3__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct arg_dev_net_ip {struct in6_addr* addr; struct net* net; void* dev; } ;


 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;

__attribute__((used)) static int fib6_remove_prefsrc(struct rt6_info *rt, void *arg)
{
 struct net_device *dev = ((struct arg_dev_net_ip *)arg)->dev;
 struct net *net = ((struct arg_dev_net_ip *)arg)->net;
 struct in6_addr *addr = ((struct arg_dev_net_ip *)arg)->addr;

 if (((void *)rt->rt6i_dev == dev || dev == ((void*)0)) &&
     rt != net->ipv6.ip6_null_entry &&
     ipv6_addr_equal(addr, &rt->rt6i_prefsrc.addr)) {

  rt->rt6i_prefsrc.plen = 0;
 }
 return 0;
}
