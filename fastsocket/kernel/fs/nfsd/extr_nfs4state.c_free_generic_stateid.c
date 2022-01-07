
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {int st_file; int st_access_bmap; } ;


 int kmem_cache_free (int ,struct nfs4_stateid*) ;
 int nfs4_access_to_omode (int) ;
 int nfs4_file_put_access (int ,int ) ;
 int put_nfs4_file (int ) ;
 int stateid_slab ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void free_generic_stateid(struct nfs4_stateid *stp)
{
 int i;

 if (stp->st_access_bmap) {
  for (i = 1; i < 4; i++) {
   if (test_bit(i, &stp->st_access_bmap))
    nfs4_file_put_access(stp->st_file,
      nfs4_access_to_omode(i));
  }
 }
 put_nfs4_file(stp->st_file);
 kmem_cache_free(stateid_slab, stp);
}
