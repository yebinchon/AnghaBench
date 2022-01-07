
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt6key {int plen; int addr; } ;
struct lookup_args {scalar_t__ offset; int addr; } ;
struct fib6_node {int fn_flags; struct fib6_node* parent; struct fib6_node* subtree; scalar_t__ leaf; struct fib6_node* left; struct fib6_node* right; int fn_bit; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ FIB6_SUBTREE (struct fib6_node*) ;
 int RTN_ROOT ;
 int RTN_RTINFO ;
 scalar_t__ addr_bit_set (int ,int ) ;
 scalar_t__ ipv6_prefix_equal (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct fib6_node * fib6_lookup_1(struct fib6_node *root,
     struct lookup_args *args)
{
 struct fib6_node *fn;
 __be32 dir;

 if (unlikely(args->offset == 0))
  return ((void*)0);





 fn = root;

 for (;;) {
  struct fib6_node *next;

  dir = addr_bit_set(args->addr, fn->fn_bit);

  next = dir ? fn->right : fn->left;

  if (next) {
   fn = next;
   continue;
  }

  break;
 }

 while(fn) {
  if (FIB6_SUBTREE(fn) || fn->fn_flags & RTN_RTINFO) {
   struct rt6key *key;

   key = (struct rt6key *) ((u8 *) fn->leaf +
       args->offset);

   if (ipv6_prefix_equal(&key->addr, args->addr, key->plen)) {




    if (!fn || fn->fn_flags & RTN_RTINFO)
     return fn;
   }
  }

  if (fn->fn_flags & RTN_ROOT)
   break;

  fn = fn->parent;
 }

 return ((void*)0);
}
