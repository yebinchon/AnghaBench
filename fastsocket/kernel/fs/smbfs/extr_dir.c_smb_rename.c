
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;


 int DENTRY_PATH (struct dentry*) ;
 int VERBOSE (char*,int ,int) ;
 int d_delete (struct dentry*) ;
 int lock_kernel () ;
 int smb_close (scalar_t__) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_mv (struct dentry*,struct dentry*) ;
 int smb_proc_unlink (struct dentry*) ;
 int smb_renew_times (struct dentry*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_rename(struct inode *old_dir, struct dentry *old_dentry,
    struct inode *new_dir, struct dentry *new_dentry)
{
 int error;





 lock_kernel();
 if (old_dentry->d_inode)
  smb_close(old_dentry->d_inode);
 if (new_dentry->d_inode) {
  smb_close(new_dentry->d_inode);
  error = smb_proc_unlink(new_dentry);
  if (error) {
   VERBOSE("unlink %s/%s, error=%d\n",
    DENTRY_PATH(new_dentry), error);
   goto out;
  }

  d_delete(new_dentry);
 }

 smb_invalid_dir_cache(old_dir);
 smb_invalid_dir_cache(new_dir);
 error = smb_proc_mv(old_dentry, new_dentry);
 if (!error) {
  smb_renew_times(old_dentry);
  smb_renew_times(new_dentry);
 }
out:
 unlock_kernel();
 return error;
}
