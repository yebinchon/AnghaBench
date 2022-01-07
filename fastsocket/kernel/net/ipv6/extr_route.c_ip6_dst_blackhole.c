
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct rt6key {int dummy; } ;
struct dst_entry {int __use; scalar_t__ dev; int * metrics; void* output; void* input; int __refcnt; } ;
struct TYPE_2__ {struct dst_entry dst; } ;
struct rt6_info {int rt6i_flags; int rt6i_src; int rt6i_dst; scalar_t__ rt6i_metric; int rt6i_gateway; scalar_t__ rt6i_expires; scalar_t__ rt6i_idev; TYPE_1__ u; } ;
struct flowi {int dummy; } ;


 int ENOMEM ;
 int RTAX_MAX ;
 int RTF_EXPIRES ;
 int atomic_set (int *,int) ;
 int dev_hold (scalar_t__) ;
 scalar_t__ dst_alloc (int *) ;
 void* dst_discard ;
 int dst_free (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int in6_dev_hold (scalar_t__) ;
 int ip6_dst_blackhole_ops ;
 int ipv6_addr_copy (int *,int *) ;
 int memcpy (int *,int *,int) ;

int ip6_dst_blackhole(struct sock *sk, struct dst_entry **dstp, struct flowi *fl)
{
 struct rt6_info *ort = (struct rt6_info *) *dstp;
 struct rt6_info *rt = (struct rt6_info *)
  dst_alloc(&ip6_dst_blackhole_ops);
 struct dst_entry *new = ((void*)0);

 if (rt) {
  new = &rt->u.dst;

  atomic_set(&new->__refcnt, 1);
  new->__use = 1;
  new->input = dst_discard;
  new->output = dst_discard;

  memcpy(new->metrics, ort->u.dst.metrics, RTAX_MAX*sizeof(u32));
  new->dev = ort->u.dst.dev;
  if (new->dev)
   dev_hold(new->dev);
  rt->rt6i_idev = ort->rt6i_idev;
  if (rt->rt6i_idev)
   in6_dev_hold(rt->rt6i_idev);
  rt->rt6i_expires = 0;

  ipv6_addr_copy(&rt->rt6i_gateway, &ort->rt6i_gateway);
  rt->rt6i_flags = ort->rt6i_flags & ~RTF_EXPIRES;
  rt->rt6i_metric = 0;

  memcpy(&rt->rt6i_dst, &ort->rt6i_dst, sizeof(struct rt6key));




  dst_free(new);
 }

 dst_release(*dstp);
 *dstp = new;
 return (new ? 0 : -ENOMEM);
}
