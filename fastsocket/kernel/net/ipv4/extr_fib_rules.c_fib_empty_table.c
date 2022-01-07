
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct fib_table {int dummy; } ;


 int RT_TABLE_MAX ;
 int * fib_get_table (struct net*,int) ;
 struct fib_table* fib_new_table (struct net*,int) ;

__attribute__((used)) static struct fib_table *fib_empty_table(struct net *net)
{
 u32 id;

 for (id = 1; id <= RT_TABLE_MAX; id++)
  if (fib_get_table(net, id) == ((void*)0))
   return fib_new_table(net, id);
 return ((void*)0);
}
