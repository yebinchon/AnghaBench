
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hash_data {int (* hd_fun ) (void*,void*) ;void* hd_private; void* hd_key; TYPE_1__* hd_hash; } ;
struct TYPE_3__ {int (* h_hashfn ) (int ,void*) ;int * h_buckets; int h_nbuckets; } ;
typedef TYPE_1__ hash_t ;


 int hash_find_list_cb ;
 int list_iter (int ,int ,struct hash_data*) ;
 int stub1 (int ,void*) ;

int
hash_find_iter(hash_t *hash, void *key, int (*fun)(void *, void *),
    void *private)
{
 int bucket = hash->h_hashfn(hash->h_nbuckets, key);
 struct hash_data hd;

 hd.hd_hash = hash;
 hd.hd_fun = fun;
 hd.hd_key = key;
 hd.hd_private = private;

 return (list_iter(hash->h_buckets[bucket], hash_find_list_cb,
     &hd));
}
