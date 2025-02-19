
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_1__* fh_export; struct dentry* fh_dentry; } ;
struct TYPE_6__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct kstat {int mode; scalar_t__ size; TYPE_3__ ctime; TYPE_2__ atime; scalar_t__ ino; int dev; scalar_t__ blocks; int rdev; scalar_t__ blksize; int gid; int uid; scalar_t__ nlink; } ;
struct dentry {int d_inode; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ ex_uuid; scalar_t__ ex_fsid; } ;





 scalar_t__ NFS_MAXPATHLEN ;
 int S_IFMT ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int fsid_source (struct svc_fh*) ;
 void* htonl (int) ;
 int lease_get_mtime (int ,struct timespec*) ;
 int new_encode_dev (int ) ;
 int* nfs_ftypes ;
 scalar_t__ nfsd_rgid (struct svc_rqst*,int ) ;
 scalar_t__ nfsd_ruid (struct svc_rqst*,int ) ;

__attribute__((used)) static __be32 *
encode_fattr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp,
      struct kstat *stat)
{
 struct dentry *dentry = fhp->fh_dentry;
 int type;
 struct timespec time;
 u32 f;

 type = (stat->mode & S_IFMT);

 *p++ = htonl(nfs_ftypes[type >> 12]);
 *p++ = htonl((u32) stat->mode);
 *p++ = htonl((u32) stat->nlink);
 *p++ = htonl((u32) nfsd_ruid(rqstp, stat->uid));
 *p++ = htonl((u32) nfsd_rgid(rqstp, stat->gid));

 if (S_ISLNK(type) && stat->size > NFS_MAXPATHLEN) {
  *p++ = htonl(NFS_MAXPATHLEN);
 } else {
  *p++ = htonl((u32) stat->size);
 }
 *p++ = htonl((u32) stat->blksize);
 if (S_ISCHR(type) || S_ISBLK(type))
  *p++ = htonl(new_encode_dev(stat->rdev));
 else
  *p++ = htonl(0xffffffff);
 *p++ = htonl((u32) stat->blocks);
 switch (fsid_source(fhp)) {
 default:
 case 130:
  *p++ = htonl(new_encode_dev(stat->dev));
  break;
 case 129:
  *p++ = htonl((u32) fhp->fh_export->ex_fsid);
  break;
 case 128:
  f = ((u32*)fhp->fh_export->ex_uuid)[0];
  f ^= ((u32*)fhp->fh_export->ex_uuid)[1];
  f ^= ((u32*)fhp->fh_export->ex_uuid)[2];
  f ^= ((u32*)fhp->fh_export->ex_uuid)[3];
  *p++ = htonl(f);
  break;
 }
 *p++ = htonl((u32) stat->ino);
 *p++ = htonl((u32) stat->atime.tv_sec);
 *p++ = htonl(stat->atime.tv_nsec ? stat->atime.tv_nsec / 1000 : 0);
 lease_get_mtime(dentry->d_inode, &time);
 *p++ = htonl((u32) time.tv_sec);
 *p++ = htonl(time.tv_nsec ? time.tv_nsec / 1000 : 0);
 *p++ = htonl((u32) stat->ctime.tv_sec);
 *p++ = htonl(stat->ctime.tv_nsec ? stat->ctime.tv_nsec / 1000 : 0);

 return p;
}
