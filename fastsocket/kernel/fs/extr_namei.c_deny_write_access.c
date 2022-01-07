
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_lock; int i_writecount; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ETXTBSY ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int deny_write_access(struct file * file)
{
 struct inode *inode = file->f_path.dentry->d_inode;

 spin_lock(&inode->i_lock);
 if (atomic_read(&inode->i_writecount) > 0) {
  spin_unlock(&inode->i_lock);
  return -ETXTBSY;
 }
 atomic_dec(&inode->i_writecount);
 spin_unlock(&inode->i_lock);

 return 0;
}
