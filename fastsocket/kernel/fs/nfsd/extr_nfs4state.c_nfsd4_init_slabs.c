
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int dummy; } ;
struct nfs4_stateid {int dummy; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_delegation {int dummy; } ;


 int ENOMEM ;
 int * deleg_slab ;
 int dprintk (char*) ;
 int * file_slab ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int nfsd4_free_slabs () ;
 int * stateid_slab ;
 int * stateowner_slab ;

__attribute__((used)) static int
nfsd4_init_slabs(void)
{
 stateowner_slab = kmem_cache_create("nfsd4_stateowners",
   sizeof(struct nfs4_stateowner), 0, 0, ((void*)0));
 if (stateowner_slab == ((void*)0))
  goto out_nomem;
 file_slab = kmem_cache_create("nfsd4_files",
   sizeof(struct nfs4_file), 0, 0, ((void*)0));
 if (file_slab == ((void*)0))
  goto out_nomem;
 stateid_slab = kmem_cache_create("nfsd4_stateids",
   sizeof(struct nfs4_stateid), 0, 0, ((void*)0));
 if (stateid_slab == ((void*)0))
  goto out_nomem;
 deleg_slab = kmem_cache_create("nfsd4_delegations",
   sizeof(struct nfs4_delegation), 0, 0, ((void*)0));
 if (deleg_slab == ((void*)0))
  goto out_nomem;
 return 0;
out_nomem:
 nfsd4_free_slabs();
 dprintk("nfsd4: out of memory while initializing nfsv4\n");
 return -ENOMEM;
}
