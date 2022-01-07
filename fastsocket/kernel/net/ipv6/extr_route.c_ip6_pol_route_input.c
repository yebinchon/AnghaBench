
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int iif; } ;
struct fib6_table {int dummy; } ;


 struct rt6_info* ip6_pol_route (struct net*,struct fib6_table*,int ,struct flowi*,int,int) ;

__attribute__((used)) static struct rt6_info *ip6_pol_route_input(struct net *net, struct fib6_table *table,
         struct flowi *fl, int flags)
{
 return ip6_pol_route(net, table, fl->iif, fl, flags, 1);
}
