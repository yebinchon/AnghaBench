
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pneigh_entry {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {int key_len; int * phash_buckets; } ;


 struct pneigh_entry* __pneigh_lookup_1 (int ,struct net*,void const*,int,struct net_device*) ;
 size_t pneigh_hash (void const*,int) ;

struct pneigh_entry *__pneigh_lookup(struct neigh_table *tbl,
  struct net *net, const void *pkey, struct net_device *dev)
{
 int key_len = tbl->key_len;
 u32 hash_val = pneigh_hash(pkey, key_len);

 return __pneigh_lookup_1(tbl->phash_buckets[hash_val],
     net, pkey, key_len, dev);
}
