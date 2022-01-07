
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rt6key {int dummy; } ;
struct TYPE_5__ {int lastuse; scalar_t__ dev; int error; int * metrics; int output; int input; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct rt6_info {int rt6i_flags; int rt6i_table; int rt6i_prefsrc; int rt6i_src; int rt6i_dst; scalar_t__ rt6i_metric; int rt6i_gateway; scalar_t__ rt6i_expires; TYPE_3__ u; scalar_t__ rt6i_idev; int rt6i_dev; } ;
struct TYPE_4__ {int ip6_dst_ops; } ;
struct net {TYPE_1__ ipv6; } ;


 int RTAX_MAX ;
 int RTF_EXPIRES ;
 int dev_hold (scalar_t__) ;
 struct net* dev_net (int ) ;
 int in6_dev_hold (scalar_t__) ;
 struct rt6_info* ip6_dst_alloc (int *) ;
 int ipv6_addr_copy (int *,int *) ;
 int jiffies ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static struct rt6_info * ip6_rt_copy(struct rt6_info *ort)
{
 struct net *net = dev_net(ort->rt6i_dev);
 struct rt6_info *rt = ip6_dst_alloc(&net->ipv6.ip6_dst_ops);

 if (rt) {
  rt->u.dst.input = ort->u.dst.input;
  rt->u.dst.output = ort->u.dst.output;

  memcpy(rt->u.dst.metrics, ort->u.dst.metrics, RTAX_MAX*sizeof(u32));
  rt->u.dst.error = ort->u.dst.error;
  rt->u.dst.dev = ort->u.dst.dev;
  if (rt->u.dst.dev)
   dev_hold(rt->u.dst.dev);
  rt->rt6i_idev = ort->rt6i_idev;
  if (rt->rt6i_idev)
   in6_dev_hold(rt->rt6i_idev);
  rt->u.dst.lastuse = jiffies;
  rt->rt6i_expires = 0;

  ipv6_addr_copy(&rt->rt6i_gateway, &ort->rt6i_gateway);
  rt->rt6i_flags = ort->rt6i_flags & ~RTF_EXPIRES;
  rt->rt6i_metric = 0;

  memcpy(&rt->rt6i_dst, &ort->rt6i_dst, sizeof(struct rt6key));



  memcpy(&rt->rt6i_prefsrc, &ort->rt6i_prefsrc, sizeof(struct rt6key));
  rt->rt6i_table = ort->rt6i_table;
 }
 return rt;
}
