
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int EOVERFLOW ;
 scalar_t__ MAX_NON_LFS ;
 int O_LARGEFILE ;
 scalar_t__ i_size_read (struct inode*) ;

int generic_file_open(struct inode * inode, struct file * filp)
{
 if (!(filp->f_flags & O_LARGEFILE) && i_size_read(inode) > MAX_NON_LFS)
  return -EOVERFLOW;
 return 0;
}
