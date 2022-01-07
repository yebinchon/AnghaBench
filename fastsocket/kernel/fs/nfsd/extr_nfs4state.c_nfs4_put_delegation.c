
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {int dl_file; int dl_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int deleg_slab ;
 int dprintk (char*,struct nfs4_delegation*) ;
 int kmem_cache_free (int ,struct nfs4_delegation*) ;
 int num_delegations ;
 int put_nfs4_file (int ) ;

void
nfs4_put_delegation(struct nfs4_delegation *dp)
{
 if (atomic_dec_and_test(&dp->dl_count)) {
  dprintk("NFSD: freeing dp %p\n",dp);
  put_nfs4_file(dp->dl_file);
  kmem_cache_free(deleg_slab, dp);
  num_delegations--;
 }
}
