
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfs4_file {int * fi_fds; } ;
typedef scalar_t__ __be32 ;


 int S_IFREG ;
 int nfs4_access_to_access (int ) ;
 int nfs4_access_to_omode (int ) ;
 int nfs4_file_get_access (struct nfs4_file*,int) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int,int *) ;

__attribute__((used)) static __be32 nfs4_get_vfs_file(struct svc_rqst *rqstp, struct nfs4_file
*fp, struct svc_fh *cur_fh, u32 nfs4_access)
{
 __be32 status;
 int oflag = nfs4_access_to_omode(nfs4_access);
 int access = nfs4_access_to_access(nfs4_access);

 if (!fp->fi_fds[oflag]) {
  status = nfsd_open(rqstp, cur_fh, S_IFREG, access,
   &fp->fi_fds[oflag]);
  if (status)
   return status;
 }
 nfs4_file_get_access(fp, oflag);

 return nfs_ok;
}
