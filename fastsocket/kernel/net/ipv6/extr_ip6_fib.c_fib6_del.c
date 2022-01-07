
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ obsolete; struct rt6_info* rt6_next; } ;
struct TYPE_8__ {TYPE_3__ dst; } ;
struct TYPE_6__ {scalar_t__ plen; } ;
struct rt6_info {int rt6i_flags; TYPE_4__ u; TYPE_2__ rt6i_src; struct fib6_node* rt6i_node; } ;
struct nl_info {struct net* nl_net; } ;
struct TYPE_5__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_node {int fn_flags; struct rt6_info* leaf; struct fib6_node* parent; } ;


 int ENOENT ;
 int RTF_CACHE ;
 int RTN_ROOT ;
 int RTN_RTINFO ;
 int WARN_ON (int) ;
 int fib6_del_route (struct fib6_node*,struct rt6_info**,struct nl_info*) ;
 int fib6_prune_clones (struct net*,struct fib6_node*,struct rt6_info*) ;

int fib6_del(struct rt6_info *rt, struct nl_info *info)
{
 struct net *net = info->nl_net;
 struct fib6_node *fn = rt->rt6i_node;
 struct rt6_info **rtp;







 if (fn == ((void*)0) || rt == net->ipv6.ip6_null_entry)
  return -ENOENT;

 WARN_ON(!(fn->fn_flags & RTN_RTINFO));

 if (!(rt->rt6i_flags&RTF_CACHE)) {
  struct fib6_node *pn = fn;
  fib6_prune_clones(info->nl_net, pn, rt);
 }





 for (rtp = &fn->leaf; *rtp; rtp = &(*rtp)->u.dst.rt6_next) {
  if (*rtp == rt) {
   fib6_del_route(fn, rtp, info);
   return 0;
  }
 }
 return -ENOENT;
}
