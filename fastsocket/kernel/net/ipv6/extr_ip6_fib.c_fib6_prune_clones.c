
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dummy; } ;
struct net {int dummy; } ;
struct fib6_node {int dummy; } ;


 int fib6_clean_tree (struct net*,struct fib6_node*,int ,int,struct rt6_info*) ;
 int fib6_prune_clone ;

__attribute__((used)) static void fib6_prune_clones(struct net *net, struct fib6_node *fn,
         struct rt6_info *rt)
{
 fib6_clean_tree(net, fn, fib6_prune_clone, 1, rt);
}
