
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct rt6_info* rt6_next; } ;
struct TYPE_9__ {TYPE_2__ dst; } ;
struct rt6_info {scalar_t__ rt6i_metric; scalar_t__ rt6i_dev; scalar_t__ rt6i_idev; int rt6i_flags; int rt6i_ref; TYPE_3__ u; struct fib6_node* rt6i_node; scalar_t__ rt6i_expires; int rt6i_gateway; } ;
struct nl_info {TYPE_6__* nl_net; TYPE_1__* nlh; } ;
struct fib6_node {int fn_flags; int * rr_ptr; struct rt6_info* leaf; } ;
struct TYPE_11__ {TYPE_4__* rt6_stats; } ;
struct TYPE_12__ {TYPE_5__ ipv6; } ;
struct TYPE_10__ {int fib_route_nodes; int fib_rt_entries; } ;
struct TYPE_7__ {int nlmsg_flags; } ;


 int EEXIST ;
 int ENOENT ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 int RTF_EXPIRES ;
 int RTM_NEWROUTE ;
 int RTN_RTINFO ;
 int atomic_inc (int *) ;
 int inet6_rt_notify (int ,struct rt6_info*,struct nl_info*) ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;
 int pr_warn (char*) ;
 int rt6_release (struct rt6_info*) ;

__attribute__((used)) static int fib6_add_rt2node(struct fib6_node *fn, struct rt6_info *rt,
       struct nl_info *info)
{
 struct rt6_info *iter = ((void*)0);
 struct rt6_info **ins;
 int replace = (info->nlh &&
         (info->nlh->nlmsg_flags & NLM_F_REPLACE));
 int add = (!info->nlh ||
     (info->nlh->nlmsg_flags & NLM_F_CREATE));
 int found = 0;

 ins = &fn->leaf;

 for (iter = fn->leaf; iter; iter=iter->u.dst.rt6_next) {




  if (iter->rt6i_metric == rt->rt6i_metric) {



   if (info->nlh &&
       (info->nlh->nlmsg_flags & NLM_F_EXCL))
    return -EEXIST;
   if (replace) {
    found++;
    break;
   }

   if (iter->rt6i_dev == rt->rt6i_dev &&
       iter->rt6i_idev == rt->rt6i_idev &&
       ipv6_addr_equal(&iter->rt6i_gateway,
         &rt->rt6i_gateway)) {
    if (!(iter->rt6i_flags&RTF_EXPIRES))
     return -EEXIST;
    iter->rt6i_expires = rt->rt6i_expires;
    if (!(rt->rt6i_flags&RTF_EXPIRES)) {
     iter->rt6i_flags &= ~RTF_EXPIRES;
     iter->rt6i_expires = 0;
    }
    return -EEXIST;
   }
  }

  if (iter->rt6i_metric > rt->rt6i_metric)
   break;

  ins = &iter->u.dst.rt6_next;
 }


 if (ins == &fn->leaf)
  fn->rr_ptr = ((void*)0);




 if (!replace) {
  if (!add)
   pr_warn("NLM_F_CREATE should be set when creating new route\n");

add:
  rt->u.dst.rt6_next = iter;
  *ins = rt;
  rt->rt6i_node = fn;
  atomic_inc(&rt->rt6i_ref);
  inet6_rt_notify(RTM_NEWROUTE, rt, info);
  info->nl_net->ipv6.rt6_stats->fib_rt_entries++;

  if (!(fn->fn_flags & RTN_RTINFO)) {
   info->nl_net->ipv6.rt6_stats->fib_route_nodes++;
   fn->fn_flags |= RTN_RTINFO;
  }

 } else {
  if (!found) {
   if (add)
    goto add;
   pr_warn("NLM_F_REPLACE set, but no existing node found!\n");
   return -ENOENT;
  }
  *ins = rt;
  rt->rt6i_node = fn;
  rt->u.dst.rt6_next = iter->u.dst.rt6_next;
  atomic_inc(&rt->rt6i_ref);
  inet6_rt_notify(RTM_NEWROUTE, rt, info);
  rt6_release(iter);
  if (!(fn->fn_flags & RTN_RTINFO)) {
   info->nl_net->ipv6.rt6_stats->fib_route_nodes++;
   fn->fn_flags |= RTN_RTINFO;
  }
 }

 return 0;
}
