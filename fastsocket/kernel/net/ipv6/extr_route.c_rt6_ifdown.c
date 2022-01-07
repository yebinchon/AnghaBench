
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct arg_dev_net {struct net* net; struct net_device* dev; } ;


 int fib6_clean_all (struct net*,int ,int ,struct arg_dev_net*) ;
 int fib6_ifdown ;
 int icmp6_clean_all (int ,struct arg_dev_net*) ;

void rt6_ifdown(struct net *net, struct net_device *dev)
{
 struct arg_dev_net adn = {
  .dev = dev,
  .net = net,
 };

 fib6_clean_all(net, fib6_ifdown, 0, &adn);
 icmp6_clean_all(fib6_ifdown, &adn);
}
