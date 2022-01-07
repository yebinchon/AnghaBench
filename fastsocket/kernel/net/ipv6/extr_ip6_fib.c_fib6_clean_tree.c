
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct fib6_node {int dummy; } ;
struct TYPE_2__ {int prune; int func; struct fib6_node* root; } ;
struct fib6_cleaner_t {int (* func ) (struct rt6_info*,void*) ;TYPE_1__ w; struct net* net; void* arg; } ;


 int fib6_clean_node ;
 int fib6_walk (TYPE_1__*) ;

__attribute__((used)) static void fib6_clean_tree(struct net *net, struct fib6_node *root,
       int (*func)(struct rt6_info *, void *arg),
       int prune, void *arg)
{
 struct fib6_cleaner_t c;

 c.w.root = root;
 c.w.func = fib6_clean_node;
 c.w.prune = prune;
 c.func = func;
 c.arg = arg;
 c.net = net;

 fib6_walk(&c.w);
}
