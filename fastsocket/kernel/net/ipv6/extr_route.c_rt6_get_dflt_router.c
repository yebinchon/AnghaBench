
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct rt6_info* rt6_next; } ;
struct TYPE_5__ {TYPE_3__ dst; } ;
struct rt6_info {int rt6i_flags; TYPE_2__ u; int rt6i_gateway; struct net_device* rt6i_dev; } ;
struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {struct rt6_info* leaf; } ;
struct fib6_table {int tb6_lock; TYPE_1__ tb6_root; } ;


 int RT6_TABLE_DFLT ;
 int RTF_ADDRCONF ;
 int RTF_DEFAULT ;
 int dev_net (struct net_device*) ;
 int dst_hold (TYPE_3__*) ;
 struct fib6_table* fib6_get_table (int ,int ) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct rt6_info *rt6_get_dflt_router(struct in6_addr *addr, struct net_device *dev)
{
 struct rt6_info *rt;
 struct fib6_table *table;

 table = fib6_get_table(dev_net(dev), RT6_TABLE_DFLT);
 if (table == ((void*)0))
  return ((void*)0);

 write_lock_bh(&table->tb6_lock);
 for (rt = table->tb6_root.leaf; rt; rt=rt->u.dst.rt6_next) {
  if (dev == rt->rt6i_dev &&
      ((rt->rt6i_flags & (RTF_ADDRCONF | RTF_DEFAULT)) == (RTF_ADDRCONF | RTF_DEFAULT)) &&
      ipv6_addr_equal(&rt->rt6i_gateway, addr))
   break;
 }
 if (rt)
  dst_hold(&rt->u.dst);
 write_unlock_bh(&table->tb6_lock);
 return rt;
}
