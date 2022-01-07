
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int obsolete; void* output; int input; struct net_device* dev; int flags; int __refcnt; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct TYPE_4__ {scalar_t__ fl4_dst; scalar_t__ fl4_src; int mark; scalar_t__ oif; int fl4_tos; } ;
struct rtable {scalar_t__ rt_dst; scalar_t__ rt_src; scalar_t__ rt_gateway; scalar_t__ rt_spec_dst; unsigned int rt_flags; TYPE_3__ u; int rt_genid; void* idev; int rt_iif; TYPE_1__ fl; } ;
struct net_device {int flags; int ifindex; } ;
struct in_device {int dummy; } ;
struct flowi {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ oif; int mark; int proto; } ;
struct fib_result {scalar_t__ type; int prefixlen; int * fi; } ;


 int DST_HOST ;
 int DST_NOPOLICY ;
 int DST_NOXFRM ;
 int EINVAL ;
 int ENOBUFS ;
 int IFF_LOOPBACK ;
 scalar_t__ IN_DEV_CONF_GET (struct in_device*,int ) ;
 scalar_t__ IN_DEV_MFORWARD (struct in_device*) ;
 int IN_DEV_ROUTE_LOCALNET (struct in_device*) ;
 int NOPOLICY ;
 int NOXFRM ;
 unsigned int RTCF_BROADCAST ;
 unsigned int RTCF_LOCAL ;
 unsigned int RTCF_MULTICAST ;
 scalar_t__ RTN_BROADCAST ;
 scalar_t__ RTN_MULTICAST ;
 int RT_CACHE_STAT_INC (int ) ;
 int RT_FL_TOS (struct flowi const*) ;
 int atomic_set (int *,int) ;
 int dev_hold (struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct rtable* dst_alloc (int *) ;
 int fib_info_put (int *) ;
 scalar_t__ htonl (int) ;
 void* in_dev_get (struct net_device*) ;
 int in_dev_put (struct in_device*) ;
 int ip_check_mc (struct in_device*,scalar_t__,scalar_t__,int ) ;
 int ip_local_deliver ;
 void* ip_mc_output ;
 int ip_mr_input ;
 void* ip_output ;
 int ipv4_dst_ops ;
 scalar_t__ ipv4_is_lbcast (scalar_t__) ;
 int ipv4_is_local_multicast (scalar_t__) ;
 scalar_t__ ipv4_is_loopback (scalar_t__) ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 scalar_t__ ipv4_is_zeronet (scalar_t__) ;
 scalar_t__ likely (int) ;
 int out_slow_mc ;
 int out_slow_tot ;
 int rt_genid (int ) ;
 int rt_set_nexthop (struct rtable*,struct fib_result*,int ) ;

__attribute__((used)) static int __mkroute_output(struct rtable **result,
       struct fib_result *res,
       const struct flowi *fl,
       const struct flowi *oldflp,
       struct net_device *dev_out,
       unsigned flags)
{
 struct rtable *rth;
 struct in_device *in_dev;
 u32 tos = RT_FL_TOS(oldflp);
 int err = 0;

 if (fl->fl4_dst == htonl(0xFFFFFFFF))
  res->type = RTN_BROADCAST;
 else if (ipv4_is_multicast(fl->fl4_dst))
  res->type = RTN_MULTICAST;
 else if (ipv4_is_lbcast(fl->fl4_dst) || ipv4_is_zeronet(fl->fl4_dst))
  return -EINVAL;

 if (dev_out->flags & IFF_LOOPBACK)
  flags |= RTCF_LOCAL;


 in_dev = in_dev_get(dev_out);
 if (!in_dev)
  return -EINVAL;

 if (likely(!IN_DEV_ROUTE_LOCALNET(in_dev))) {
  if (ipv4_is_loopback(fl->fl4_src) && !(dev_out->flags & IFF_LOOPBACK)) {
   err = -EINVAL;
   goto cleanup;
  }
 }

 if (res->type == RTN_BROADCAST) {
  flags |= RTCF_BROADCAST | RTCF_LOCAL;
  if (res->fi) {
   fib_info_put(res->fi);
   res->fi = ((void*)0);
  }
 } else if (res->type == RTN_MULTICAST) {
  flags |= RTCF_MULTICAST|RTCF_LOCAL;
  if (!ip_check_mc(in_dev, oldflp->fl4_dst, oldflp->fl4_src,
     oldflp->proto))
   flags &= ~RTCF_LOCAL;




  if (res->fi && res->prefixlen < 4) {
   fib_info_put(res->fi);
   res->fi = ((void*)0);
  }
 }


 rth = dst_alloc(&ipv4_dst_ops);
 if (!rth) {
  err = -ENOBUFS;
  goto cleanup;
 }

 atomic_set(&rth->u.dst.__refcnt, 1);
 rth->u.dst.flags= DST_HOST;
 if (IN_DEV_CONF_GET(in_dev, NOXFRM))
  rth->u.dst.flags |= DST_NOXFRM;
 if (IN_DEV_CONF_GET(in_dev, NOPOLICY))
  rth->u.dst.flags |= DST_NOPOLICY;

 rth->fl.fl4_dst = oldflp->fl4_dst;
 rth->fl.fl4_tos = tos;
 rth->fl.fl4_src = oldflp->fl4_src;
 rth->fl.oif = oldflp->oif;
 rth->fl.mark = oldflp->mark;
 rth->rt_dst = fl->fl4_dst;
 rth->rt_src = fl->fl4_src;
 rth->rt_iif = oldflp->oif ? : dev_out->ifindex;


 rth->u.dst.dev = dev_out;
 dev_hold(dev_out);
 rth->idev = in_dev_get(dev_out);
 rth->rt_gateway = fl->fl4_dst;
 rth->rt_spec_dst= fl->fl4_src;

 rth->u.dst.output=ip_output;
 rth->u.dst.obsolete = -1;
 rth->rt_genid = rt_genid(dev_net(dev_out));

 RT_CACHE_STAT_INC(out_slow_tot);

 if (flags & RTCF_LOCAL) {
  rth->u.dst.input = ip_local_deliver;
  rth->rt_spec_dst = fl->fl4_dst;
 }
 if (flags & (RTCF_BROADCAST | RTCF_MULTICAST)) {
  rth->rt_spec_dst = fl->fl4_src;
  if (flags & RTCF_LOCAL &&
      !(dev_out->flags & IFF_LOOPBACK)) {
   rth->u.dst.output = ip_mc_output;
   RT_CACHE_STAT_INC(out_slow_mc);
  }
 }

 rt_set_nexthop(rth, res, 0);

 rth->rt_flags = flags;

 *result = rth;
 cleanup:

 in_dev_put(in_dev);

 return err;
}
