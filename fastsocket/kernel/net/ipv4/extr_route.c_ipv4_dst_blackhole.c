
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dst_entry {int __use; scalar_t__ dev; int metrics; void* output; void* input; int __refcnt; } ;
struct TYPE_4__ {struct dst_entry dst; } ;
struct rtable {TYPE_2__ u; TYPE_1__* peer; int rt_spec_dst; int rt_gateway; int rt_iif; int rt_src; int rt_dst; int rt_type; int rt_flags; int rt_genid; scalar_t__ idev; int fl; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct TYPE_3__ {int refcnt; } ;


 int ENOMEM ;
 int RTAX_MAX ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int dev_hold (scalar_t__) ;
 scalar_t__ dst_alloc (int *) ;
 void* dst_discard ;
 int dst_free (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int in_dev_hold (scalar_t__) ;
 int ipv4_dst_blackhole_ops ;
 int memcpy (int ,int ,int) ;
 int rt_genid (struct net*) ;

__attribute__((used)) static int ipv4_dst_blackhole(struct net *net, struct rtable **rp, struct flowi *flp)
{
 struct rtable *ort = *rp;
 struct rtable *rt = (struct rtable *)
  dst_alloc(&ipv4_dst_blackhole_ops);

 if (rt) {
  struct dst_entry *new = &rt->u.dst;

  atomic_set(&new->__refcnt, 1);
  new->__use = 1;
  new->input = dst_discard;
  new->output = dst_discard;
  memcpy(new->metrics, ort->u.dst.metrics, RTAX_MAX*sizeof(u32));

  new->dev = ort->u.dst.dev;
  if (new->dev)
   dev_hold(new->dev);

  rt->fl = ort->fl;

  rt->idev = ort->idev;
  if (rt->idev)
   in_dev_hold(rt->idev);
  rt->rt_genid = rt_genid(net);
  rt->rt_flags = ort->rt_flags;
  rt->rt_type = ort->rt_type;
  rt->rt_dst = ort->rt_dst;
  rt->rt_src = ort->rt_src;
  rt->rt_iif = ort->rt_iif;
  rt->rt_gateway = ort->rt_gateway;
  rt->rt_spec_dst = ort->rt_spec_dst;
  rt->peer = ort->peer;
  if (rt->peer)
   atomic_inc(&rt->peer->refcnt);

  dst_free(new);
 }

 dst_release(&(*rp)->u.dst);
 *rp = rt;
 return (rt ? 0 : -ENOMEM);
}
