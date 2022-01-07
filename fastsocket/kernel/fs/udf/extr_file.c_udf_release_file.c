
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mutex; } ;
struct file {int f_mode; } ;


 int FMODE_WRITE ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udf_discard_prealloc (struct inode*) ;
 int unlock_kernel () ;

__attribute__((used)) static int udf_release_file(struct inode *inode, struct file *filp)
{
 if (filp->f_mode & FMODE_WRITE) {
  mutex_lock(&inode->i_mutex);
  lock_kernel();
  udf_discard_prealloc(inode);
  unlock_kernel();
  mutex_unlock(&inode->i_mutex);
 }
 return 0;
}
