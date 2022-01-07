
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_inode {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void pohmelfs_init_once(void *data)
{
 struct pohmelfs_inode *pi = data;

 inode_init_once(&pi->vfs_inode);
}
