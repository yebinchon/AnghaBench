
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int data; } ;
struct inode {int dummy; } ;


 int kfree (int ) ;
 int kmem_cache_free (int ,struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_inode_slab ;

__attribute__((used)) static void ubifs_destroy_inode(struct inode *inode)
{
 struct ubifs_inode *ui = ubifs_inode(inode);

 kfree(ui->data);
 kmem_cache_free(ubifs_inode_slab, inode);
}
