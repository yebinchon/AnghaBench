
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct rt6_info* rt6_next; } ;
struct TYPE_6__ {TYPE_3__ dst; } ;
struct rt6_info {scalar_t__ rt6i_metric; TYPE_2__ u; int rt6i_gateway; TYPE_1__* rt6i_dev; } ;
struct fib6_table {int tb6_lock; int tb6_root; } ;
struct fib6_node {struct rt6_info* leaf; } ;
struct TYPE_8__ {int nl_net; } ;
struct fib6_config {scalar_t__ fc_ifindex; int fc_flags; scalar_t__ fc_metric; TYPE_4__ fc_nlinfo; int fc_gateway; int fc_src_len; int fc_src; int fc_dst_len; int fc_dst; int fc_table; } ;
struct TYPE_5__ {scalar_t__ ifindex; } ;


 int ESRCH ;
 int RTF_GATEWAY ;
 int __ip6_del_rt (struct rt6_info*,TYPE_4__*) ;
 int dst_hold (TYPE_3__*) ;
 struct fib6_table* fib6_get_table (int ,int ) ;
 struct fib6_node* fib6_locate (int *,int *,int ,int *,int ) ;
 int ipv6_addr_equal (int *,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int ip6_route_del(struct fib6_config *cfg)
{
 struct fib6_table *table;
 struct fib6_node *fn;
 struct rt6_info *rt;
 int err = -ESRCH;

 table = fib6_get_table(cfg->fc_nlinfo.nl_net, cfg->fc_table);
 if (table == ((void*)0))
  return err;

 read_lock_bh(&table->tb6_lock);

 fn = fib6_locate(&table->tb6_root,
    &cfg->fc_dst, cfg->fc_dst_len,
    &cfg->fc_src, cfg->fc_src_len);

 if (fn) {
  for (rt = fn->leaf; rt; rt = rt->u.dst.rt6_next) {
   if (cfg->fc_ifindex &&
       (rt->rt6i_dev == ((void*)0) ||
        rt->rt6i_dev->ifindex != cfg->fc_ifindex))
    continue;
   if (cfg->fc_flags & RTF_GATEWAY &&
       !ipv6_addr_equal(&cfg->fc_gateway, &rt->rt6i_gateway))
    continue;
   if (cfg->fc_metric && cfg->fc_metric != rt->rt6i_metric)
    continue;
   dst_hold(&rt->u.dst);
   read_unlock_bh(&table->tb6_lock);

   return __ip6_del_rt(rt, &cfg->fc_nlinfo);
  }
 }
 read_unlock_bh(&table->tb6_lock);

 return err;
}
