
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_flags; } ;
struct kstat {int ino; } ;
struct inode {int i_mode; int i_mapping; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int cache_validity; } ;


 int MNT_NOATIME ;
 int MNT_NODIRATIME ;
 int NFS_FILEID (struct inode*) ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ATIME ;
 int NFS_SERVER (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __nfs_revalidate_inode (int ,struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int nfs_compat_user_ino64 (int ) ;
 int nfs_revalidate_inode (int ,struct inode*) ;

int nfs_getattr(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 int need_atime = NFS_I(inode)->cache_validity & NFS_INO_INVALID_ATIME;
 int err;


 if (S_ISREG(inode->i_mode)) {
  err = filemap_write_and_wait(inode->i_mapping);
  if (err)
   goto out;
 }
  if ((mnt->mnt_flags & MNT_NOATIME) ||
      ((mnt->mnt_flags & MNT_NODIRATIME) && S_ISDIR(inode->i_mode)))
  need_atime = 0;

 if (need_atime)
  err = __nfs_revalidate_inode(NFS_SERVER(inode), inode);
 else
  err = nfs_revalidate_inode(NFS_SERVER(inode), inode);
 if (!err) {
  generic_fillattr(inode, stat);
  stat->ino = nfs_compat_user_ino64(NFS_FILEID(inode));
 }
out:
 return err;
}
