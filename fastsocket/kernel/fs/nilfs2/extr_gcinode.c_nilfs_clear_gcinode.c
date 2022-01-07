
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int nilfs_mdt_clear (struct inode*) ;
 int nilfs_mdt_destroy (struct inode*) ;

void nilfs_clear_gcinode(struct inode *inode)
{
 nilfs_mdt_clear(inode);
 nilfs_mdt_destroy(inode);
}
