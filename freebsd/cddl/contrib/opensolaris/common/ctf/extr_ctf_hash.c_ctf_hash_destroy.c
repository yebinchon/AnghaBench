
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort_t ;
typedef int ctf_helem_t ;
struct TYPE_3__ {int h_nbuckets; int h_nelems; int * h_chains; int * h_buckets; } ;
typedef TYPE_1__ ctf_hash_t ;


 int ctf_free (int *,int) ;

void
ctf_hash_destroy(ctf_hash_t *hp)
{
 if (hp->h_buckets != ((void*)0) && hp->h_nbuckets != 1) {
  ctf_free(hp->h_buckets, sizeof (ushort_t) * hp->h_nbuckets);
  hp->h_buckets = ((void*)0);
 }

 if (hp->h_chains != ((void*)0)) {
  ctf_free(hp->h_chains, sizeof (ctf_helem_t) * hp->h_nelems);
  hp->h_chains = ((void*)0);
 }
}
