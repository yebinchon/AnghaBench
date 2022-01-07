
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int truncate_mutex; } ;


 TYPE_1__* EXT2_I (struct inode*) ;
 int FMODE_WRITE ;
 int ext2_discard_reservation (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ext2_release_file (struct inode * inode, struct file * filp)
{
 if (filp->f_mode & FMODE_WRITE) {
  mutex_lock(&EXT2_I(inode)->truncate_mutex);
  ext2_discard_reservation(inode);
  mutex_unlock(&EXT2_I(inode)->truncate_mutex);
 }
 return 0;
}
