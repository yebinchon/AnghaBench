
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h_nbuckets; struct TYPE_5__* h_buckets; } ;
typedef TYPE_1__ hash_t ;


 int free (TYPE_1__*) ;
 int list_free (TYPE_1__,void (*) (void*,void*),void*) ;

void
hash_free(hash_t *hash, void (*datafree)(void *, void *), void *private)
{
 int i;

 if (hash == ((void*)0))
  return;

 for (i = 0; i < hash->h_nbuckets; i++)
  list_free(hash->h_buckets[i], datafree, private);
 free(hash->h_buckets);
 free(hash);
}
