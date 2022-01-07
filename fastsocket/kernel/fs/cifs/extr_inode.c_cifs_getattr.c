
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct kstat {int gid; int uid; int ino; int blksize; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct dentry {struct inode* d_inode; int d_sb; } ;
struct cifs_tcon {int unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_5__ {int uniqueid; int clientCanCacheRead; } ;
struct TYPE_4__ {scalar_t__ nrpages; } ;


 TYPE_3__* CIFS_I (struct inode*) ;
 int CIFS_MAX_MSGSIZE ;
 int CIFS_MOUNT_CIFS_ACL ;
 int CIFS_MOUNT_MULTIUSER ;
 int CIFS_MOUNT_OVERR_GID ;
 int CIFS_MOUNT_OVERR_UID ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int cifs_revalidate_dentry_attr (struct dentry*) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int filemap_fdatawait (TYPE_1__*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int mapping_set_error (TYPE_1__*,int) ;

int cifs_getattr(struct vfsmount *mnt, struct dentry *dentry,
   struct kstat *stat)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(dentry->d_sb);
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 struct inode *inode = dentry->d_inode;
 int rc;





 if (!CIFS_I(inode)->clientCanCacheRead && inode->i_mapping &&
     inode->i_mapping->nrpages != 0) {
  rc = filemap_fdatawait(inode->i_mapping);
  if (rc) {
   mapping_set_error(inode->i_mapping, rc);
   return rc;
  }
 }

 rc = cifs_revalidate_dentry_attr(dentry);
 if (rc)
  return rc;

 generic_fillattr(inode, stat);
 stat->blksize = CIFS_MAX_MSGSIZE;
 stat->ino = CIFS_I(inode)->uniqueid;






 if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER) &&
     !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL) &&
     !tcon->unix_ext) {
  if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_UID))
   stat->uid = current_fsuid();
  if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_GID))
   stat->gid = current_fsgid();
 }
 return rc;
}
