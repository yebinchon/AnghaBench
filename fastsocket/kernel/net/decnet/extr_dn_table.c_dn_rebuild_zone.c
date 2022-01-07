
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_zone {int dummy; } ;
struct dn_fib_node {struct dn_fib_node* fn_next; int fn_key; } ;


 struct dn_fib_node** dn_chain_p (int ,struct dn_zone*) ;
 scalar_t__ dn_key_leq (int ,int ) ;

__attribute__((used)) static inline void dn_rebuild_zone(struct dn_zone *dz,
       struct dn_fib_node **old_ht,
       int old_divisor)
{
 int i;
 struct dn_fib_node *f, **fp, *next;

 for(i = 0; i < old_divisor; i++) {
  for(f = old_ht[i]; f; f = f->fn_next) {
   next = f->fn_next;
   for(fp = dn_chain_p(f->fn_key, dz);
    *fp && dn_key_leq((*fp)->fn_key, f->fn_key);
    fp = &(*fp)->fn_next)
                 ;
   f->fn_next = *fp;
   *fp = f;
  }
 }
}
