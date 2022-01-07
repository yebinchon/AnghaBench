
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int OCFS2_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int ocfs2_inode_cachep ;

__attribute__((used)) static void ocfs2_destroy_inode(struct inode *inode)
{
 kmem_cache_free(ocfs2_inode_cachep, OCFS2_I(inode));
}
