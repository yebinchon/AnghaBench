
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net_device {int dummy; } ;
struct neighbour {int primary_key; struct net_device* dev; struct neighbour* next; } ;
struct neigh_table {int key_len; size_t (* hash ) (void const*,struct net_device*) ;size_t hash_mask; int lock; struct neighbour** hash_buckets; } ;


 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int hits ;
 int lookups ;
 int memcmp (int ,void const*,int) ;
 int neigh_hold (struct neighbour*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 size_t stub1 (void const*,struct net_device*) ;

struct neighbour *neigh_lookup(struct neigh_table *tbl, const void *pkey,
          struct net_device *dev)
{
 struct neighbour *n;
 int key_len = tbl->key_len;
 u32 hash_val;

 NEIGH_CACHE_STAT_INC(tbl, lookups);

 read_lock_bh(&tbl->lock);
 hash_val = tbl->hash(pkey, dev);
 for (n = tbl->hash_buckets[hash_val & tbl->hash_mask]; n; n = n->next) {
  if (dev == n->dev && !memcmp(n->primary_key, pkey, key_len)) {
   neigh_hold(n);
   NEIGH_CACHE_STAT_INC(tbl, hits);
   break;
  }
 }
 read_unlock_bh(&tbl->lock);
 return n;
}
