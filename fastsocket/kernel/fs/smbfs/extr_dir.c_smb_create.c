
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct dentry {int dummy; } ;
typedef int __u16 ;


 int ATTR_MODE ;
 int DENTRY_PATH (struct dentry*) ;
 int PARANOIA (char*,int ,int) ;
 int SMB_CAP_UNIX ;
 int VERBOSE (char*,int ,int) ;
 int get_seconds () ;
 int lock_kernel () ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_instantiate (struct dentry*,int ,int) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_create (struct dentry*,int ,int ,int *) ;
 int smb_proc_setattr_unix (struct dentry*,struct iattr*,int ,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 __u16 fileid;
 int error;
 struct iattr attr;

 VERBOSE("creating %s/%s, mode=%d\n", DENTRY_PATH(dentry), mode);

 lock_kernel();
 smb_invalid_dir_cache(dir);
 error = smb_proc_create(dentry, 0, get_seconds(), &fileid);
 if (!error) {
  if (server->opt.capabilities & SMB_CAP_UNIX) {

   attr.ia_valid = ATTR_MODE;
   attr.ia_mode = mode;
   error = smb_proc_setattr_unix(dentry, &attr, 0, 0);
  }
  error = smb_instantiate(dentry, fileid, 1);
 } else {
  PARANOIA("%s/%s failed, error=%d\n",
    DENTRY_PATH(dentry), error);
 }
 unlock_kernel();
 return error;
}
