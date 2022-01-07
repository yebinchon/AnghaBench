
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_writecount; } ;


 int ETXTBSY ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int get_write_access(struct inode * inode)
{
 spin_lock(&inode->i_lock);
 if (atomic_read(&inode->i_writecount) < 0) {
  spin_unlock(&inode->i_lock);
  return -ETXTBSY;
 }
 atomic_inc(&inode->i_writecount);
 spin_unlock(&inode->i_lock);

 return 0;
}
