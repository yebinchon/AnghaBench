
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int AFFS_I (struct inode*) ;
 int affs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void affs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(affs_inode_cachep, AFFS_I(inode));
}
