
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int hpfs_i (struct inode*) ;
 int hpfs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void hpfs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(hpfs_inode_cachep, hpfs_i(inode));
}
