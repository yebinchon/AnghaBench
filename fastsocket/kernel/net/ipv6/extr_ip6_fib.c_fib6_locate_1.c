
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt6key {int addr; } ;
struct in6_addr {int dummy; } ;
struct fib6_node {int fn_bit; struct fib6_node* left; struct fib6_node* right; scalar_t__ leaf; } ;


 scalar_t__ addr_bit_set (struct in6_addr*,int) ;
 int ipv6_prefix_equal (int *,struct in6_addr*,int) ;

__attribute__((used)) static struct fib6_node * fib6_locate_1(struct fib6_node *root,
     struct in6_addr *addr,
     int plen, int offset)
{
 struct fib6_node *fn;

 for (fn = root; fn ; ) {
  struct rt6key *key = (struct rt6key *)((u8 *)fn->leaf + offset);




  if (plen < fn->fn_bit ||
      !ipv6_prefix_equal(&key->addr, addr, fn->fn_bit))
   return ((void*)0);

  if (plen == fn->fn_bit)
   return fn;




  if (addr_bit_set(addr, fn->fn_bit))
   fn = fn->right;
  else
   fn = fn->left;
 }
 return ((void*)0);
}
