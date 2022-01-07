
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_lock; int i_gid; int i_uid; } ;
struct iattr {int ia_valid; int ia_mode; int ia_size; int ia_gid; int ia_uid; } ;
struct TYPE_2__ {int cache_validity; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int NFSIOS_SETATTRTRUNC ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACCESS ;
 int NFS_INO_INVALID_ACL ;
 int S_IALLUGO ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_vmtruncate (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_setattr_update_inode(struct inode *inode, struct iattr *attr)
{
 if ((attr->ia_valid & (ATTR_MODE|ATTR_UID|ATTR_GID)) != 0) {
  spin_lock(&inode->i_lock);
  if ((attr->ia_valid & ATTR_MODE) != 0) {
   int mode = attr->ia_mode & S_IALLUGO;
   mode |= inode->i_mode & ~S_IALLUGO;
   inode->i_mode = mode;
  }
  if ((attr->ia_valid & ATTR_UID) != 0)
   inode->i_uid = attr->ia_uid;
  if ((attr->ia_valid & ATTR_GID) != 0)
   inode->i_gid = attr->ia_gid;
  NFS_I(inode)->cache_validity |= NFS_INO_INVALID_ACCESS|NFS_INO_INVALID_ACL;
  spin_unlock(&inode->i_lock);
 }
 if ((attr->ia_valid & ATTR_SIZE) != 0) {
  nfs_inc_stats(inode, NFSIOS_SETATTRTRUNC);
  nfs_vmtruncate(inode, attr->ia_size);
 }
}
