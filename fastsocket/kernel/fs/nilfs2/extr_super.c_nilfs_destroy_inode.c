
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NILFS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int nilfs_inode_cachep ;

void nilfs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(nilfs_inode_cachep, NILFS_I(inode));
}
