
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pneigh_entry {struct net_device* dev; struct pneigh_entry* next; int key; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {int key_len; int lock; int (* pdestructor ) (struct pneigh_entry*) ;struct pneigh_entry** phash_buckets; } ;


 int ENOENT ;
 int dev_put (struct net_device*) ;
 int kfree (struct pneigh_entry*) ;
 int memcmp (int ,void const*,int) ;
 scalar_t__ net_eq (int ,struct net*) ;
 size_t pneigh_hash (void const*,int) ;
 int pneigh_net (struct pneigh_entry*) ;
 int release_net (int ) ;
 int stub1 (struct pneigh_entry*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int pneigh_delete(struct neigh_table *tbl, struct net *net, const void *pkey,
    struct net_device *dev)
{
 struct pneigh_entry *n, **np;
 int key_len = tbl->key_len;
 u32 hash_val = pneigh_hash(pkey, key_len);

 write_lock_bh(&tbl->lock);
 for (np = &tbl->phash_buckets[hash_val]; (n = *np) != ((void*)0);
      np = &n->next) {
  if (!memcmp(n->key, pkey, key_len) && n->dev == dev &&
      net_eq(pneigh_net(n), net)) {
   *np = n->next;
   write_unlock_bh(&tbl->lock);
   if (tbl->pdestructor)
    tbl->pdestructor(n);
   if (n->dev)
    dev_put(n->dev);
   release_net(pneigh_net(n));
   kfree(n);
   return 0;
  }
 }
 write_unlock_bh(&tbl->lock);
 return -ENOENT;
}
