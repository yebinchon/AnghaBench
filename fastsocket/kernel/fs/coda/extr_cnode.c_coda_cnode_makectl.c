
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_ino; } ;


 int CTL_INO ;
 int ENOMEM ;
 int coda_ioctl_inode_operations ;
 int coda_ioctl_operations ;
 struct inode* new_inode (struct super_block*) ;

int coda_cnode_makectl(struct inode **inode, struct super_block *sb)
{
 int error = -ENOMEM;

 *inode = new_inode(sb);
 if (*inode) {
  (*inode)->i_ino = CTL_INO;
  (*inode)->i_op = &coda_ioctl_inode_operations;
  (*inode)->i_fop = &coda_ioctl_operations;
  (*inode)->i_mode = 0444;
  error = 0;
 }

 return error;
}
