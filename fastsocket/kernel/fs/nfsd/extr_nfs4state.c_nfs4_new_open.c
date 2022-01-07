
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd4_open {int op_share_access; } ;
struct nfs4_stateid {int dummy; } ;
struct nfs4_file {int dummy; } ;
typedef scalar_t__ __be32 ;


 int kmem_cache_free (int ,struct nfs4_stateid*) ;
 struct nfs4_stateid* nfs4_alloc_stateid () ;
 scalar_t__ nfs4_get_vfs_file (struct svc_rqst*,struct nfs4_file*,struct svc_fh*,int ) ;
 scalar_t__ nfserr_resource ;
 int stateid_slab ;

__attribute__((used)) static __be32
nfs4_new_open(struct svc_rqst *rqstp, struct nfs4_stateid **stpp,
  struct nfs4_file *fp, struct svc_fh *cur_fh,
  struct nfsd4_open *open)
{
 struct nfs4_stateid *stp;
 __be32 status;

 stp = nfs4_alloc_stateid();
 if (stp == ((void*)0))
  return nfserr_resource;

 status = nfs4_get_vfs_file(rqstp, fp, cur_fh, open->op_share_access);
 if (status) {
  kmem_cache_free(stateid_slab, stp);
  return status;
 }
 *stpp = stp;
 return 0;
}
