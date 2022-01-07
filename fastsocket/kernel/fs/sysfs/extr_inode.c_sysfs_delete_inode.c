
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct inode {int i_data; struct sysfs_dirent* i_private; } ;


 int clear_inode (struct inode*) ;
 int sysfs_put (struct sysfs_dirent*) ;
 int truncate_inode_pages (int *,int ) ;

void sysfs_delete_inode(struct inode *inode)
{
 struct sysfs_dirent *sd = inode->i_private;

 truncate_inode_pages(&inode->i_data, 0);
 clear_inode(inode);
 sysfs_put(sd);
}
