
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct fib6_table {int dummy; } ;


 struct fib6_table* fib6_get_table (struct net*,int ) ;

struct fib6_table *fib6_new_table(struct net *net, u32 id)
{
 return fib6_get_table(net, id);
}
