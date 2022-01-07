
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* h_hashfn ) (int ,void*) ;int * h_buckets; int h_nbuckets; } ;
typedef TYPE_1__ hash_t ;


 int hash_remove_cb ;
 int list_remove (int *,void*,int ,TYPE_1__*) ;
 int stub1 (int ,void*) ;

void
hash_remove(hash_t *hash, void *key)
{
 int bucket = hash->h_hashfn(hash->h_nbuckets, key);

 (void) list_remove(&hash->h_buckets[bucket], key,
     hash_remove_cb, hash);
}
