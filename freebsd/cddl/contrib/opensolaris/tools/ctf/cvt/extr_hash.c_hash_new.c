
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_4__ {int h_nbuckets; int (* h_hashfn ) (int,void*) ;int (* h_cmp ) (void*,void*) ;int h_buckets; } ;
typedef TYPE_1__ hash_t ;


 int hash_def_cmp (void*,void*) ;
 int hash_def_hash (int,void*) ;
 int xcalloc (int) ;
 TYPE_1__* xmalloc (int) ;

hash_t *
hash_new(int nbuckets, int (*hashfn)(int, void *), int (*cmp)(void *, void *))
{
 hash_t *hash;

 hash = xmalloc(sizeof (hash_t));
 hash->h_buckets = xcalloc(sizeof (list_t *) * nbuckets);
 hash->h_nbuckets = nbuckets;
 hash->h_hashfn = hashfn ? hashfn : hash_def_hash;
 hash->h_cmp = cmp ? cmp : hash_def_cmp;

 return (hash);
}
