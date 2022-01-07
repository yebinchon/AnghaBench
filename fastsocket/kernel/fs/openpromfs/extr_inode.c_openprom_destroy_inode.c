
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int OP_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int op_inode_cachep ;

__attribute__((used)) static void openprom_destroy_inode(struct inode *inode)
{
 kmem_cache_free(op_inode_cachep, OP_I(inode));
}
