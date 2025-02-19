
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {scalar_t__ rt6i_dev; } ;
typedef void net_device ;
struct TYPE_2__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct arg_dev_net {struct net* net; void* dev; } ;


 int RT6_TRACE (char*,struct rt6_info*) ;

__attribute__((used)) static int fib6_ifdown(struct rt6_info *rt, void *arg)
{
 struct net_device *dev = ((struct arg_dev_net *)arg)->dev;
 struct net *net = ((struct arg_dev_net *)arg)->net;

 if (((void *)rt->rt6i_dev == dev || dev == ((void*)0)) &&
     rt != net->ipv6.ip6_null_entry) {
  RT6_TRACE("deleted by ifdown %p\n", rt);
  return -1;
 }
 return 0;
}
