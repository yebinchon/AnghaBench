
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int openers; } ;


 int O_ACCMODE ;
 TYPE_2__* SMB_I (struct inode*) ;
 int lock_kernel () ;
 int smb_open (struct dentry*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static int
smb_file_open(struct inode *inode, struct file * file)
{
 int result;
 struct dentry *dentry = file->f_path.dentry;
 int smb_mode = (file->f_mode & O_ACCMODE) - 1;

 lock_kernel();
 result = smb_open(dentry, smb_mode);
 if (result)
  goto out;
 SMB_I(inode)->openers++;
out:
 unlock_kernel();
 return result;
}
