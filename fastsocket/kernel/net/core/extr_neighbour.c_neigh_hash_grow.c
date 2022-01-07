
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {struct neighbour* next; int dev; int primary_key; } ;
struct neigh_table {int hash_mask; unsigned int (* hash ) (int ,int ) ;struct neighbour** hash_buckets; int hash_rnd; } ;


 int BUG_ON (int) ;
 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int get_random_bytes (int *,int) ;
 int hash_grows ;
 int is_power_of_2 (unsigned long) ;
 struct neighbour** neigh_hash_alloc (unsigned long) ;
 int neigh_hash_free (struct neighbour**,unsigned int) ;
 unsigned int stub1 (int ,int ) ;

__attribute__((used)) static void neigh_hash_grow(struct neigh_table *tbl, unsigned long new_entries)
{
 struct neighbour **new_hash, **old_hash;
 unsigned int i, new_hash_mask, old_entries;

 NEIGH_CACHE_STAT_INC(tbl, hash_grows);

 BUG_ON(!is_power_of_2(new_entries));
 new_hash = neigh_hash_alloc(new_entries);
 if (!new_hash)
  return;

 old_entries = tbl->hash_mask + 1;
 new_hash_mask = new_entries - 1;
 old_hash = tbl->hash_buckets;

 get_random_bytes(&tbl->hash_rnd, sizeof(tbl->hash_rnd));
 for (i = 0; i < old_entries; i++) {
  struct neighbour *n, *next;

  for (n = old_hash[i]; n; n = next) {
   unsigned int hash_val = tbl->hash(n->primary_key, n->dev);

   hash_val &= new_hash_mask;
   next = n->next;

   n->next = new_hash[hash_val];
   new_hash[hash_val] = n;
  }
 }
 tbl->hash_buckets = new_hash;
 tbl->hash_mask = new_hash_mask;

 neigh_hash_free(old_hash, old_entries);
}
