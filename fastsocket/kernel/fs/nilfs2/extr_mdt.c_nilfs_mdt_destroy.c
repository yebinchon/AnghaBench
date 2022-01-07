
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_mdt_info {struct nilfs_mdt_info* mi_bgl; } ;
struct inode {int dummy; } ;


 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int kfree (struct nilfs_mdt_info*) ;
 int nilfs_destroy_inode (struct inode*) ;

void nilfs_mdt_destroy(struct inode *inode)
{
 struct nilfs_mdt_info *mdi = NILFS_MDT(inode);

 kfree(mdi->mi_bgl);
 kfree(mdi);
 nilfs_destroy_inode(inode);
}
