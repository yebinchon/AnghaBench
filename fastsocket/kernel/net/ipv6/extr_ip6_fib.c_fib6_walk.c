
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_walker_t {int root; int node; int state; } ;


 int FWS_INIT ;
 int fib6_walk_continue (struct fib6_walker_t*) ;
 int fib6_walker_link (struct fib6_walker_t*) ;
 int fib6_walker_unlink (struct fib6_walker_t*) ;

__attribute__((used)) static int fib6_walk(struct fib6_walker_t *w)
{
 int res;

 w->state = FWS_INIT;
 w->node = w->root;

 fib6_walker_link(w);
 res = fib6_walk_continue(w);
 if (res <= 0)
  fib6_walker_unlink(w);
 return res;
}
