
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_flags; int f_mode; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef int loff_t ;


 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int EBADF ;
 int EINVAL ;
 int EPERM ;
 int FMODE_WRITE ;
 scalar_t__ IS_APPEND (struct inode*) ;
 int MAX_NON_LFS ;
 int O_LARGEFILE ;
 int S_ISREG (int ) ;
 int do_truncate (struct dentry*,int ,int,struct file*) ;
 struct file* fget (unsigned int) ;
 int fput (struct file*) ;
 int locks_verify_truncate (struct inode*,struct file*,int ) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;
 int security_path_truncate (TYPE_1__*,int ,int) ;

__attribute__((used)) static long do_sys_ftruncate(unsigned int fd, loff_t length, int small)
{
 struct inode * inode;
 struct dentry *dentry;
 struct file * file;
 int error;

 error = -EINVAL;
 if (length < 0)
  goto out;
 error = -EBADF;
 file = fget(fd);
 if (!file)
  goto out;


 if (file->f_flags & O_LARGEFILE)
  small = 0;

 dentry = file->f_path.dentry;
 inode = dentry->d_inode;
 error = -EINVAL;
 if (!S_ISREG(inode->i_mode) || !(file->f_mode & FMODE_WRITE))
  goto out_putf;

 error = -EINVAL;

 if (small && length > MAX_NON_LFS)
  goto out_putf;

 error = -EPERM;
 if (IS_APPEND(inode))
  goto out_putf;

 sb_start_write(inode->i_sb);
 error = locks_verify_truncate(inode, file, length);
 if (!error)
  error = security_path_truncate(&file->f_path, length,
            ATTR_MTIME|ATTR_CTIME);
 if (!error)
  error = do_truncate(dentry, length, ATTR_MTIME|ATTR_CTIME, file);
 sb_end_write(inode->i_sb);
out_putf:
 fput(file);
out:
 return error;
}
