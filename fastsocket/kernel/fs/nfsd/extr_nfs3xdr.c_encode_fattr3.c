
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct kstat {int mode; scalar_t__ size; int ino; int ctime; int mtime; int atime; int rdev; scalar_t__ blocks; int gid; int uid; scalar_t__ nlink; } ;
typedef int __be32 ;


 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 scalar_t__ NFS3_MAXPATHLEN ;
 int S_IFMT ;
 scalar_t__ S_ISLNK (int) ;
 int * encode_fsid (int *,struct svc_fh*) ;
 int * encode_time3 (int *,int *) ;
 void* htonl (int ) ;
 int * nfs3_ftypes ;
 scalar_t__ nfsd_rgid (struct svc_rqst*,int ) ;
 scalar_t__ nfsd_ruid (struct svc_rqst*,int ) ;
 int * xdr_encode_hyper (int *,int) ;

__attribute__((used)) static __be32 *
encode_fattr3(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp,
       struct kstat *stat)
{
 *p++ = htonl(nfs3_ftypes[(stat->mode & S_IFMT) >> 12]);
 *p++ = htonl((u32) stat->mode);
 *p++ = htonl((u32) stat->nlink);
 *p++ = htonl((u32) nfsd_ruid(rqstp, stat->uid));
 *p++ = htonl((u32) nfsd_rgid(rqstp, stat->gid));
 if (S_ISLNK(stat->mode) && stat->size > NFS3_MAXPATHLEN) {
  p = xdr_encode_hyper(p, (u64) NFS3_MAXPATHLEN);
 } else {
  p = xdr_encode_hyper(p, (u64) stat->size);
 }
 p = xdr_encode_hyper(p, ((u64)stat->blocks) << 9);
 *p++ = htonl((u32) MAJOR(stat->rdev));
 *p++ = htonl((u32) MINOR(stat->rdev));
 p = encode_fsid(p, fhp);
 p = xdr_encode_hyper(p, stat->ino);
 p = encode_time3(p, &stat->atime);
 p = encode_time3(p, &stat->mtime);
 p = encode_time3(p, &stat->ctime);

 return p;
}
