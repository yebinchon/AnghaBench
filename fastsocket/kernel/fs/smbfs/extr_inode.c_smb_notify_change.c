
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int capabilities; scalar_t__ protocol; } ;
struct smb_sb_info {TYPE_3__ opt; TYPE_2__* ops; TYPE_1__* mnt; } ;
struct smb_fattr {long f_mode; int attr; int f_atime; int f_mtime; } ;
struct inode {int i_mapping; scalar_t__ i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; unsigned int ia_mode; int ia_atime; int ia_mtime; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_5__ {int (* truncate ) (struct inode*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ uid; scalar_t__ gid; } ;


 int ATTR_ATIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int DENTRY_PATH (struct dentry*) ;
 int EPERM ;
 int O_WRONLY ;
 int SMB_CAP_UNIX ;
 scalar_t__ SMB_PROTOCOL_LANMAN2 ;
 unsigned int S_IFDIR ;
 unsigned int S_IFREG ;
 unsigned int S_IRWXUGO ;
 int S_IWUSR ;
 int VERBOSE (char*,int ,long,long) ;
 int aRONLY ;
 int filemap_write_and_wait (int ) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int lock_kernel () ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_get_inode_attr (struct inode*,struct smb_fattr*) ;
 int smb_open (struct dentry*,int ) ;
 int smb_proc_setattr (struct dentry*,struct smb_fattr*) ;
 int smb_proc_setattr_unix (struct dentry*,struct iattr*,int ,int ) ;
 int smb_proc_settime (struct dentry*,struct smb_fattr*) ;
 int smb_refresh_inode (struct dentry*) ;
 int smb_revalidate_inode (struct dentry*) ;
 int stub1 (struct inode*,scalar_t__) ;
 int unlock_kernel () ;
 int vmtruncate (struct inode*,scalar_t__) ;

int
smb_notify_change(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 struct smb_sb_info *server = server_from_dentry(dentry);
 unsigned int mask = (S_IFREG | S_IFDIR | S_IRWXUGO);
 int error, changed, refresh = 0;
 struct smb_fattr fattr;

 lock_kernel();

 error = smb_revalidate_inode(dentry);
 if (error)
  goto out;

 if ((error = inode_change_ok(inode, attr)) < 0)
  goto out;

 error = -EPERM;
 if ((attr->ia_valid & ATTR_UID) && (attr->ia_uid != server->mnt->uid))
  goto out;

 if ((attr->ia_valid & ATTR_GID) && (attr->ia_uid != server->mnt->gid))
  goto out;

 if ((attr->ia_valid & ATTR_MODE) && (attr->ia_mode & ~mask))
  goto out;

 if ((attr->ia_valid & ATTR_SIZE) != 0) {
  VERBOSE("changing %s/%s, old size=%ld, new size=%ld\n",
   DENTRY_PATH(dentry),
   (long) inode->i_size, (long) attr->ia_size);

  filemap_write_and_wait(inode->i_mapping);

  error = smb_open(dentry, O_WRONLY);
  if (error)
   goto out;
  error = server->ops->truncate(inode, attr->ia_size);
  if (error)
   goto out;
  error = vmtruncate(inode, attr->ia_size);
  if (error)
   goto out;
  refresh = 1;
 }

 if (server->opt.capabilities & SMB_CAP_UNIX) {

  attr->ia_valid &= ~ATTR_SIZE;

  error = smb_proc_setattr_unix(dentry, attr, 0, 0);
  if (!error)
   refresh = 1;

  goto out;
 }






 smb_get_inode_attr(inode, &fattr);

 changed = 0;
 if ((attr->ia_valid & ATTR_MTIME) != 0) {
  fattr.f_mtime = attr->ia_mtime;
  changed = 1;
 }
 if ((attr->ia_valid & ATTR_ATIME) != 0) {
  fattr.f_atime = attr->ia_atime;

  if (server->opt.protocol >= SMB_PROTOCOL_LANMAN2)
   changed = 1;
 }
 if (changed) {
  error = smb_proc_settime(dentry, &fattr);
  if (error)
   goto out;
  refresh = 1;
 }





 if ((attr->ia_valid & ATTR_MODE) != 0) {
  VERBOSE("%s/%s mode change, old=%x, new=%x\n",
   DENTRY_PATH(dentry), fattr.f_mode, attr->ia_mode);
  changed = 0;
  if (attr->ia_mode & S_IWUSR) {
   if (fattr.attr & aRONLY) {
    fattr.attr &= ~aRONLY;
    changed = 1;
   }
  } else {
   if (!(fattr.attr & aRONLY)) {
    fattr.attr |= aRONLY;
    changed = 1;
   }
  }
  if (changed) {
   error = smb_proc_setattr(dentry, &fattr);
   if (error)
    goto out;
   refresh = 1;
  }
 }
 error = 0;

out:
 if (refresh)
  smb_refresh_inode(dentry);
 unlock_kernel();
 return error;
}
