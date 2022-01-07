
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; int ctime; } ;
struct inode {int i_ctime; } ;


 int NFS_ATTR_FATTR_CTIME ;
 scalar_t__ timespec_compare (int *,int *) ;

__attribute__((used)) static int nfs_ctime_need_update(const struct inode *inode, const struct nfs_fattr *fattr)
{
 if (!(fattr->valid & NFS_ATTR_FATTR_CTIME))
  return 0;
 return timespec_compare(&fattr->ctime, &inode->i_ctime) > 0;
}
