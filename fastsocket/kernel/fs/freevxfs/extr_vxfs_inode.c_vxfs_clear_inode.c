
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;


 int kmem_cache_free (int ,int ) ;
 int vxfs_inode_cachep ;

void
vxfs_clear_inode(struct inode *ip)
{
 kmem_cache_free(vxfs_inode_cachep, ip->i_private);
}
