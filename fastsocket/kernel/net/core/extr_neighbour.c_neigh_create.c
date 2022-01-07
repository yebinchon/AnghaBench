
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct neighbour {scalar_t__ dead; struct neighbour* next; int primary_key; struct net_device* dev; TYPE_1__* parms; scalar_t__ confirmed; } ;
struct neigh_table {int key_len; int (* constructor ) (struct neighbour*) ;int hash_mask; size_t (* hash ) (void const*,struct net_device*) ;int lock; struct neighbour** hash_buckets; int entries; } ;
struct TYPE_2__ {int (* neigh_setup ) (struct neighbour*) ;int base_reachable_time; scalar_t__ dead; } ;


 int EINVAL ;
 int ENOBUFS ;
 struct neighbour* ERR_PTR (int) ;
 int NEIGH_PRINTK2 (char*,struct neighbour*) ;
 int atomic_read (int *) ;
 int dev_hold (struct net_device*) ;
 scalar_t__ jiffies ;
 int memcmp (int ,void const*,int) ;
 int memcpy (int ,void const*,int) ;
 struct neighbour* neigh_alloc (struct neigh_table*) ;
 int neigh_hash_grow (struct neigh_table*,int) ;
 int neigh_hold (struct neighbour*) ;
 int neigh_release (struct neighbour*) ;
 int stub1 (struct neighbour*) ;
 int stub2 (struct neighbour*) ;
 size_t stub3 (void const*,struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct neighbour *neigh_create(struct neigh_table *tbl, const void *pkey,
          struct net_device *dev)
{
 u32 hash_val;
 int key_len = tbl->key_len;
 int error;
 struct neighbour *n1, *rc, *n = neigh_alloc(tbl);

 if (!n) {
  rc = ERR_PTR(-ENOBUFS);
  goto out;
 }

 memcpy(n->primary_key, pkey, key_len);
 n->dev = dev;
 dev_hold(dev);


 if (tbl->constructor && (error = tbl->constructor(n)) < 0) {
  rc = ERR_PTR(error);
  goto out_neigh_release;
 }


 if (n->parms->neigh_setup &&
     (error = n->parms->neigh_setup(n)) < 0) {
  rc = ERR_PTR(error);
  goto out_neigh_release;
 }

 n->confirmed = jiffies - (n->parms->base_reachable_time << 1);

 write_lock_bh(&tbl->lock);

 if (atomic_read(&tbl->entries) > (tbl->hash_mask + 1))
  neigh_hash_grow(tbl, (tbl->hash_mask + 1) << 1);

 hash_val = tbl->hash(pkey, dev) & tbl->hash_mask;

 if (n->parms->dead) {
  rc = ERR_PTR(-EINVAL);
  goto out_tbl_unlock;
 }

 for (n1 = tbl->hash_buckets[hash_val]; n1; n1 = n1->next) {
  if (dev == n1->dev && !memcmp(n1->primary_key, pkey, key_len)) {
   neigh_hold(n1);
   rc = n1;
   goto out_tbl_unlock;
  }
 }

 n->next = tbl->hash_buckets[hash_val];
 tbl->hash_buckets[hash_val] = n;
 n->dead = 0;
 neigh_hold(n);
 write_unlock_bh(&tbl->lock);
 NEIGH_PRINTK2("neigh %p is created.\n", n);
 rc = n;
out:
 return rc;
out_tbl_unlock:
 write_unlock_bh(&tbl->lock);
out_neigh_release:
 neigh_release(n);
 goto out;
}
