
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_zone {int fz_divisor; int fz_hashmask; int fz_order; struct fn_zone* fz_next; int fz_mask; int fz_hash; } ;
struct fn_hash {struct fn_zone** fn_zones; struct fn_zone* fn_zone_list; } ;


 int GFP_KERNEL ;
 int fib_hash_genid ;
 int fib_hash_lock ;
 int fz_hash_alloc (int) ;
 int inet_make_mask (int) ;
 int kfree (struct fn_zone*) ;
 struct fn_zone* kzalloc (int,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct fn_zone *
fn_new_zone(struct fn_hash *table, int z)
{
 int i;
 struct fn_zone *fz = kzalloc(sizeof(struct fn_zone), GFP_KERNEL);
 if (!fz)
  return ((void*)0);

 if (z) {
  fz->fz_divisor = 16;
 } else {
  fz->fz_divisor = 1;
 }
 fz->fz_hashmask = (fz->fz_divisor - 1);
 fz->fz_hash = fz_hash_alloc(fz->fz_divisor);
 if (!fz->fz_hash) {
  kfree(fz);
  return ((void*)0);
 }
 fz->fz_order = z;
 fz->fz_mask = inet_make_mask(z);


 for (i=z+1; i<=32; i++)
  if (table->fn_zones[i])
   break;
 write_lock_bh(&fib_hash_lock);
 if (i>32) {

  fz->fz_next = table->fn_zone_list;
  table->fn_zone_list = fz;
 } else {
  fz->fz_next = table->fn_zones[i]->fz_next;
  table->fn_zones[i]->fz_next = fz;
 }
 table->fn_zones[z] = fz;
 fib_hash_genid++;
 write_unlock_bh(&fib_hash_lock);
 return fz;
}
