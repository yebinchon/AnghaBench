
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_nbuckets; int ** h_buckets; } ;
typedef TYPE_1__ hash_t ;


 int list_iter (int *,int (*) (void*,void*),void*) ;

int
hash_iter(hash_t *hash, int (*fun)(void *, void *), void *private)
{
 int cumrc = 0;
 int cbrc;
 int i;

 for (i = 0; i < hash->h_nbuckets; i++) {
  if (hash->h_buckets[i] != ((void*)0)) {
   if ((cbrc = list_iter(hash->h_buckets[i], fun,
       private)) < 0)
    return (cbrc);
   cumrc += cbrc;
  }
 }

 return (cumrc);
}
