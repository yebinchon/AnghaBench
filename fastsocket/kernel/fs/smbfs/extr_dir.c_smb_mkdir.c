
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct dentry {int dummy; } ;


 int ATTR_MODE ;
 int SMB_CAP_UNIX ;
 int lock_kernel () ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_instantiate (struct dentry*,int ,int ) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_mkdir (struct dentry*) ;
 int smb_proc_setattr_unix (struct dentry*,struct iattr*,int ,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 int error;
 struct iattr attr;

 lock_kernel();
 smb_invalid_dir_cache(dir);
 error = smb_proc_mkdir(dentry);
 if (!error) {
  if (server->opt.capabilities & SMB_CAP_UNIX) {

   attr.ia_valid = ATTR_MODE;
   attr.ia_mode = mode;
   error = smb_proc_setattr_unix(dentry, &attr, 0, 0);
  }
  error = smb_instantiate(dentry, 0, 0);
 }
 unlock_kernel();
 return error;
}
