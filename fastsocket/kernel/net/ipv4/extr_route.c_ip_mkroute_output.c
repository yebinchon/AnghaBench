
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dummy; } ;
struct net_device {int dummy; } ;
struct flowi {int oif; int fl4_src; int fl4_dst; } ;
struct fib_result {int dummy; } ;


 int __mkroute_output (struct rtable**,struct fib_result*,struct flowi const*,struct flowi const*,struct net_device*,unsigned int) ;
 int dev_net (struct net_device*) ;
 int rt_genid (int ) ;
 unsigned int rt_hash (int ,int ,int ,int ) ;
 int rt_intern_hash (unsigned int,struct rtable*,struct rtable**,int *) ;

__attribute__((used)) static int ip_mkroute_output(struct rtable **rp,
        struct fib_result *res,
        const struct flowi *fl,
        const struct flowi *oldflp,
        struct net_device *dev_out,
        unsigned flags)
{
 struct rtable *rth = ((void*)0);
 int err = __mkroute_output(&rth, res, fl, oldflp, dev_out, flags);
 unsigned hash;
 if (err == 0) {
  hash = rt_hash(oldflp->fl4_dst, oldflp->fl4_src, oldflp->oif,
          rt_genid(dev_net(dev_out)));
  err = rt_intern_hash(hash, rth, rp, ((void*)0));
 }

 return err;
}
