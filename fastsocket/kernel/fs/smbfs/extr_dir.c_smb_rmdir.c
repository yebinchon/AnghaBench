
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int EBUSY ;
 int d_unhashed (struct dentry*) ;
 int lock_kernel () ;
 int smb_close (struct inode*) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_rmdir (struct dentry*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 int error;




 lock_kernel();
 smb_close(inode);




 error = -EBUSY;
 if (!d_unhashed(dentry))
  goto out;

 smb_invalid_dir_cache(dir);
 error = smb_proc_rmdir(dentry);

out:
 unlock_kernel();
 return error;
}
