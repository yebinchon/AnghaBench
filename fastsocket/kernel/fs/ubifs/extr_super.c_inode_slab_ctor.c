
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void inode_slab_ctor(void *obj)
{
 struct ubifs_inode *ui = obj;
 inode_init_once(&ui->vfs_inode);
}
