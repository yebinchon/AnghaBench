
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int h_nbuckets; int h_nelems; int h_free; struct TYPE_6__* h_chains; struct TYPE_6__* h_buckets; } ;
typedef TYPE_1__ ushort_t ;
typedef scalar_t__ ulong_t ;
typedef int ctf_helem_t ;
typedef TYPE_1__ ctf_hash_t ;


 int EAGAIN ;
 int EOVERFLOW ;
 scalar_t__ USHRT_MAX ;
 scalar_t__ _CTF_EMPTY ;
 int bzero (TYPE_1__*,int) ;
 void* ctf_alloc (int) ;
 int ctf_hash_destroy (TYPE_1__*) ;

int
ctf_hash_create(ctf_hash_t *hp, ulong_t nelems)
{
 if (nelems > USHRT_MAX)
  return (EOVERFLOW);





 if (nelems == 0) {
  bzero(hp, sizeof (ctf_hash_t));
  hp->h_buckets = (ushort_t *)_CTF_EMPTY;
  hp->h_nbuckets = 1;
  return (0);
 }

 hp->h_nbuckets = 211;
 hp->h_nelems = nelems + 1;
 hp->h_free = 1;

 hp->h_buckets = ctf_alloc(sizeof (ushort_t) * hp->h_nbuckets);
 hp->h_chains = ctf_alloc(sizeof (ctf_helem_t) * hp->h_nelems);

 if (hp->h_buckets == ((void*)0) || hp->h_chains == ((void*)0)) {
  ctf_hash_destroy(hp);
  return (EAGAIN);
 }

 bzero(hp->h_buckets, sizeof (ushort_t) * hp->h_nbuckets);
 bzero(hp->h_chains, sizeof (ctf_helem_t) * hp->h_nelems);

 return (0);
}
