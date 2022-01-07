
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct fib6_config {int dummy; } ;


 int ip6_route_del (struct fib6_config*) ;
 int rtm_to_fib6_config (struct sk_buff*,struct nlmsghdr*,struct fib6_config*) ;

__attribute__((used)) static int inet6_rtm_delroute(struct sk_buff *skb, struct nlmsghdr* nlh, void *arg)
{
 struct fib6_config cfg;
 int err;

 err = rtm_to_fib6_config(skb, nlh, &cfg);
 if (err < 0)
  return err;

 return ip6_route_del(&cfg);
}
