
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct fib6_table* fib6_main_tbl; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int dummy; } ;



struct fib6_table *fib6_get_table(struct net *net, u32 id)
{
   return net->ipv6.fib6_main_tbl;
}
