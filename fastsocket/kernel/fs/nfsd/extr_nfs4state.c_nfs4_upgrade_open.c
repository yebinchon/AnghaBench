
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd4_open {int op_share_access; int op_share_deny; } ;
struct nfs4_stateid {int st_deny_bmap; int st_access_bmap; } ;
struct nfs4_file {int dummy; } ;
typedef scalar_t__ __be32 ;


 int NFS4_SHARE_WANT_MASK ;
 int __set_bit (int,int *) ;
 int nfs4_access_to_omode (int) ;
 int nfs4_file_put_access (struct nfs4_file*,int) ;
 scalar_t__ nfs4_get_vfs_file (struct svc_rqst*,struct nfs4_file*,struct svc_fh*,int) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_truncate (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*) ;
 int test_bit (int,int *) ;

__attribute__((used)) static __be32
nfs4_upgrade_open(struct svc_rqst *rqstp, struct nfs4_file *fp, struct svc_fh *cur_fh, struct nfs4_stateid *stp, struct nfsd4_open *open)
{
 u32 op_share_access = open->op_share_access & ~NFS4_SHARE_WANT_MASK;
 bool new_access;
 __be32 status;

 new_access = !test_bit(op_share_access, &stp->st_access_bmap);
 if (new_access) {
  status = nfs4_get_vfs_file(rqstp, fp, cur_fh, op_share_access);
  if (status)
   return status;
 }
 status = nfsd4_truncate(rqstp, cur_fh, open);
 if (status) {
  if (new_access) {
   int oflag = nfs4_access_to_omode(op_share_access);
   nfs4_file_put_access(fp, oflag);
  }
  return status;
 }

 __set_bit(op_share_access, &stp->st_access_bmap);
 __set_bit(open->op_share_deny, &stp->st_deny_bmap);

 return nfs_ok;
}
