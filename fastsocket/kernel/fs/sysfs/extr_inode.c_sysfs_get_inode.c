
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_ino; } ;
struct inode {int i_state; } ;


 int I_NEW ;
 struct inode* iget_locked (int ,int ) ;
 int sysfs_init_inode (struct sysfs_dirent*,struct inode*) ;
 int sysfs_sb ;

struct inode * sysfs_get_inode(struct sysfs_dirent *sd)
{
 struct inode *inode;

 inode = iget_locked(sysfs_sb, sd->s_ino);
 if (inode && (inode->i_state & I_NEW))
  sysfs_init_inode(sd, inode);

 return inode;
}
