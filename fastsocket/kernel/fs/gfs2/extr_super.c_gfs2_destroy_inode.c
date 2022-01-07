
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int gfs2_inode_cachep ;
 int kmem_cache_free (int ,struct inode*) ;

__attribute__((used)) static void gfs2_destroy_inode(struct inode *inode)
{
 kmem_cache_free(gfs2_inode_cachep, inode);
}
