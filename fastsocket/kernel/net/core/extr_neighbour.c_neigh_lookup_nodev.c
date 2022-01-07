
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net {int dummy; } ;
struct neighbour {int dev; int primary_key; struct neighbour* next; } ;
struct neigh_table {int key_len; size_t (* hash ) (void const*,int *) ;size_t hash_mask; int lock; struct neighbour** hash_buckets; } ;


 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int dev_net (int ) ;
 int hits ;
 int lookups ;
 int memcmp (int ,void const*,int) ;
 int neigh_hold (struct neighbour*) ;
 scalar_t__ net_eq (int ,struct net*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 size_t stub1 (void const*,int *) ;

struct neighbour *neigh_lookup_nodev(struct neigh_table *tbl, struct net *net,
         const void *pkey)
{
 struct neighbour *n;
 int key_len = tbl->key_len;
 u32 hash_val;

 NEIGH_CACHE_STAT_INC(tbl, lookups);

 read_lock_bh(&tbl->lock);
 hash_val = tbl->hash(pkey, ((void*)0));
 for (n = tbl->hash_buckets[hash_val & tbl->hash_mask]; n; n = n->next) {
  if (!memcmp(n->primary_key, pkey, key_len) &&
      net_eq(dev_net(n->dev), net)) {
   neigh_hold(n);
   NEIGH_CACHE_STAT_INC(tbl, hits);
   break;
  }
 }
 read_unlock_bh(&tbl->lock);
 return n;
}
