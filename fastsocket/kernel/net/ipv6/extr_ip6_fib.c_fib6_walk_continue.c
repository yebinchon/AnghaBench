
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_walker_t {int state; int (* func ) (struct fib6_walker_t*) ;struct fib6_node* node; int leaf; struct fib6_node* root; scalar_t__ prune; } ;
struct fib6_node {int fn_flags; int leaf; struct fib6_node* right; struct fib6_node* left; struct fib6_node* parent; } ;


 struct fib6_node* FIB6_SUBTREE (struct fib6_node*) ;

 void* FWS_INIT ;




 int RTN_ROOT ;
 int RTN_RTINFO ;
 int WARN_ON (int) ;
 int stub1 (struct fib6_walker_t*) ;

__attribute__((used)) static int fib6_walk_continue(struct fib6_walker_t *w)
{
 struct fib6_node *fn, *pn;

 for (;;) {
  fn = w->node;
  if (fn == ((void*)0))
   return 0;

  if (w->prune && fn != w->root &&
      fn->fn_flags&RTN_RTINFO && w->state < 132) {
   w->state = 132;
   w->leaf = fn->leaf;
  }
  switch (w->state) {
  case 131:
   if (fn->left) {
    w->node = fn->left;
    w->state = FWS_INIT;
    continue;
   }
   w->state = 130;
  case 130:
   if (fn->right) {
    w->node = fn->right;
    w->state = FWS_INIT;
    continue;
   }
   w->state = 132;
   w->leaf = fn->leaf;
  case 132:
   if (w->leaf && fn->fn_flags&RTN_RTINFO) {
    int err = w->func(w);
    if (err)
     return err;
    continue;
   }
   w->state = 128;
  case 128:
   if (fn == w->root)
    return 0;
   pn = fn->parent;
   w->node = pn;







   if (pn->left == fn) {
    w->state = 130;
    continue;
   }
   if (pn->right == fn) {
    w->state = 132;
    w->leaf = w->node->leaf;
    continue;
   }



  }
 }
}
