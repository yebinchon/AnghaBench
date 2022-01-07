
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int INODE_INFO (struct inode*) ;
 int efs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void efs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(efs_inode_cachep, INODE_INFO(inode));
}
