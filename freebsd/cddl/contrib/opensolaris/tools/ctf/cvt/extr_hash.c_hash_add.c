
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* h_hashfn ) (int ,void*) ;int * h_buckets; int h_nbuckets; } ;
typedef TYPE_1__ hash_t ;


 int list_add (int *,void*) ;
 int stub1 (int ,void*) ;

void
hash_add(hash_t *hash, void *key)
{
 int bucket = hash->h_hashfn(hash->h_nbuckets, key);

 list_add(&hash->h_buckets[bucket], key);
}
