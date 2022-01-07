
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_inode; } ;


 int lock_kernel () ;
 int smb_close (int ) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_unlink (struct dentry*) ;
 int smb_renew_times (struct dentry*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_unlink(struct inode *dir, struct dentry *dentry)
{
 int error;




 lock_kernel();
 smb_close(dentry->d_inode);

 smb_invalid_dir_cache(dir);
 error = smb_proc_unlink(dentry);
 if (!error)
  smb_renew_times(dentry);
 unlock_kernel();
 return error;
}
