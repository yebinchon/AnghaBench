
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ minor; void* major; } ;
struct TYPE_4__ {void* blocks; void* blocksize; } ;
struct TYPE_5__ {TYPE_1__ nfs2; } ;
struct nfs_fattr {int mode; int rdev; int valid; int ctime; int change_attr; int mtime; int atime; void* fileid; TYPE_3__ fsid; TYPE_2__ du; void* size; void* gid; void* uid; void* nlink; } ;
typedef int __be32 ;


 scalar_t__ NFCHR ;
 scalar_t__ NFS2_FIFO_DEV ;
 int NFS_ATTR_FATTR_V2 ;
 int S_IFIFO ;
 int S_IFMT ;
 int new_decode_dev (scalar_t__) ;
 int nfs_timespec_to_change_attr (int *) ;
 void* ntohl (int ) ;
 int * xdr_decode_time (int *,int *) ;

__attribute__((used)) static __be32 *
xdr_decode_fattr(__be32 *p, struct nfs_fattr *fattr)
{
 u32 rdev, type;
 type = ntohl(*p++);
 fattr->mode = ntohl(*p++);
 fattr->nlink = ntohl(*p++);
 fattr->uid = ntohl(*p++);
 fattr->gid = ntohl(*p++);
 fattr->size = ntohl(*p++);
 fattr->du.nfs2.blocksize = ntohl(*p++);
 rdev = ntohl(*p++);
 fattr->du.nfs2.blocks = ntohl(*p++);
 fattr->fsid.major = ntohl(*p++);
 fattr->fsid.minor = 0;
 fattr->fileid = ntohl(*p++);
 p = xdr_decode_time(p, &fattr->atime);
 p = xdr_decode_time(p, &fattr->mtime);
 p = xdr_decode_time(p, &fattr->ctime);
 fattr->change_attr = nfs_timespec_to_change_attr(&fattr->ctime);
 fattr->valid |= NFS_ATTR_FATTR_V2;
 fattr->rdev = new_decode_dev(rdev);
 if (type == NFCHR && rdev == NFS2_FIFO_DEV) {
  fattr->mode = (fattr->mode & ~S_IFMT) | S_IFIFO;
  fattr->rdev = 0;
 }
 return p;
}
