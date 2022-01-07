
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int UFS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int ufs_inode_cachep ;

__attribute__((used)) static void ufs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(ufs_inode_cachep, UFS_I(inode));
}
