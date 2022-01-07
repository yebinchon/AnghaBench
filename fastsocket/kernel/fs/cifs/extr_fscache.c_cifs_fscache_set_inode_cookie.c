
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int cifs_fscache_disable_inode_cookie (struct inode*) ;
 int cifs_fscache_enable_inode_cookie (struct inode*) ;

void cifs_fscache_set_inode_cookie(struct inode *inode, struct file *filp)
{
 if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
  cifs_fscache_disable_inode_cookie(inode);
 else
  cifs_fscache_enable_inode_cookie(inode);
}
