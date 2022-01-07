
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst; } ;
struct rt6_info {TYPE_1__ u; } ;
struct net {int dummy; } ;
struct flowi {int fl6_src; int oif; int fl6_dst; } ;
struct fib6_table {int tb6_lock; int tb6_root; } ;
struct fib6_node {struct rt6_info* leaf; } ;


 int BACKTRACK (struct net*,int *) ;
 int dst_use (int *,int ) ;
 struct fib6_node* fib6_lookup (int *,int *,int *) ;
 int jiffies ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct rt6_info* rt6_device_match (struct net*,struct rt6_info*,int *,int ,int) ;

__attribute__((used)) static struct rt6_info *ip6_pol_route_lookup(struct net *net,
          struct fib6_table *table,
          struct flowi *fl, int flags)
{
 struct fib6_node *fn;
 struct rt6_info *rt;

 read_lock_bh(&table->tb6_lock);
 fn = fib6_lookup(&table->tb6_root, &fl->fl6_dst, &fl->fl6_src);
restart:
 rt = fn->leaf;
 rt = rt6_device_match(net, rt, &fl->fl6_src, fl->oif, flags);
 BACKTRACK(net, &fl->fl6_src);
out:
 dst_use(&rt->u.dst, jiffies);
 read_unlock_bh(&table->tb6_lock);
 return rt;

}
