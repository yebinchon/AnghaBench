
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* h_hashfn ) (int ,void*) ;int * h_buckets; int h_nbuckets; } ;
typedef TYPE_1__ hash_t ;


 scalar_t__ list_iter (int ,int (*) (void*,void*),void*) ;
 int stub1 (int ,void*) ;

int
hash_match(hash_t *hash, void *key, int (*fun)(void *, void *),
    void *private)
{
 int bucket = hash->h_hashfn(hash->h_nbuckets, key);

 return (list_iter(hash->h_buckets[bucket], fun, private) < 0);
}
