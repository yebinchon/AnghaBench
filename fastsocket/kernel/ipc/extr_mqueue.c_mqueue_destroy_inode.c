
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int MQUEUE_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int mqueue_inode_cachep ;

__attribute__((used)) static void mqueue_destroy_inode(struct inode *inode)
{
 kmem_cache_free(mqueue_inode_cachep, MQUEUE_I(inode));
}
