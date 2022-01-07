
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int DLMFS_I (struct inode*) ;
 int dlmfs_inode_cache ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void dlmfs_destroy_inode(struct inode *inode)
{
 kmem_cache_free(dlmfs_inode_cache, DLMFS_I(inode));
}
