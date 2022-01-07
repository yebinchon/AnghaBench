
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int JFFS2_INODE_INFO (struct inode*) ;
 int jffs2_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void jffs2_destroy_inode(struct inode *inode)
{
 kmem_cache_free(jffs2_inode_cachep, JFFS2_INODE_INFO(inode));
}
