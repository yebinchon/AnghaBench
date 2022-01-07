
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib6_main_tbl; } ;
struct net {TYPE_1__ ipv6; } ;


 int fib6_link_table (struct net*,int ) ;

__attribute__((used)) static void fib6_tables_init(struct net *net)
{
 fib6_link_table(net, net->ipv6.fib6_main_tbl);
}
