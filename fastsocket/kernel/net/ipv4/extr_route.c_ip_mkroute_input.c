
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct in_device {int dummy; } ;
struct flowi {scalar_t__ oif; int iif; } ;
struct fib_result {TYPE_3__* fi; } ;
typedef int __be32 ;
struct TYPE_6__ {int fib_nhs; } ;


 int __mkroute_input (struct sk_buff*,struct fib_result*,struct in_device*,int ,int ,int ,struct rtable**) ;
 int dev_net (int ) ;
 int fib_select_multipath (struct flowi const*,struct fib_result*) ;
 int rt_genid (int ) ;
 unsigned int rt_hash (int ,int ,int ,int ) ;
 int rt_intern_hash (unsigned int,struct rtable*,int *,struct sk_buff*) ;

__attribute__((used)) static int ip_mkroute_input(struct sk_buff *skb,
       struct fib_result *res,
       const struct flowi *fl,
       struct in_device *in_dev,
       __be32 daddr, __be32 saddr, u32 tos)
{
 struct rtable* rth = ((void*)0);
 int err;
 unsigned hash;







 err = __mkroute_input(skb, res, in_dev, daddr, saddr, tos, &rth);
 if (err)
  return err;


 hash = rt_hash(daddr, saddr, fl->iif,
         rt_genid(dev_net(rth->u.dst.dev)));
 return rt_intern_hash(hash, rth, ((void*)0), skb);
}
