
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; int size; } ;
struct inode {int dummy; } ;


 int NFS_ATTR_FATTR_SIZE ;
 scalar_t__ i_size_read (struct inode const*) ;
 scalar_t__ nfs_size_to_loff_t (int ) ;

__attribute__((used)) static int nfs_size_need_update(const struct inode *inode, const struct nfs_fattr *fattr)
{
 if (!(fattr->valid & NFS_ATTR_FATTR_SIZE))
  return 0;
 return nfs_size_to_loff_t(fattr->size) > i_size_read(inode);
}
