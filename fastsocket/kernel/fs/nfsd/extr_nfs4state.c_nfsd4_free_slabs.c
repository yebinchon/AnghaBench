
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deleg_slab ;
 int file_slab ;
 int nfsd4_free_slab (int *) ;
 int stateid_slab ;
 int stateowner_slab ;

void
nfsd4_free_slabs(void)
{
 nfsd4_free_slab(&stateowner_slab);
 nfsd4_free_slab(&file_slab);
 nfsd4_free_slab(&stateid_slab);
 nfsd4_free_slab(&deleg_slab);
}
