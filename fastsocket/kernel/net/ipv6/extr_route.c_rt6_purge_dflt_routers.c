
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct rt6_info* rt6_next; } ;
struct TYPE_4__ {TYPE_3__ dst; } ;
struct rt6_info {int rt6i_flags; TYPE_1__ u; } ;
struct net {int dummy; } ;
struct TYPE_5__ {struct rt6_info* leaf; } ;
struct fib6_table {int tb6_lock; TYPE_2__ tb6_root; } ;


 int RT6_TABLE_DFLT ;
 int RTF_ADDRCONF ;
 int RTF_DEFAULT ;
 int dst_hold (TYPE_3__*) ;
 struct fib6_table* fib6_get_table (struct net*,int ) ;
 int ip6_del_rt (struct rt6_info*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void rt6_purge_dflt_routers(struct net *net)
{
 struct rt6_info *rt;
 struct fib6_table *table;


 table = fib6_get_table(net, RT6_TABLE_DFLT);
 if (table == ((void*)0))
  return;

restart:
 read_lock_bh(&table->tb6_lock);
 for (rt = table->tb6_root.leaf; rt; rt = rt->u.dst.rt6_next) {
  if (rt->rt6i_flags & (RTF_DEFAULT | RTF_ADDRCONF)) {
   dst_hold(&rt->u.dst);
   read_unlock_bh(&table->tb6_lock);
   ip6_del_rt(rt);
   goto restart;
  }
 }
 read_unlock_bh(&table->tb6_lock);
}
