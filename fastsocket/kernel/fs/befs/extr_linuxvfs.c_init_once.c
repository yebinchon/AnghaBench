
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct befs_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
        struct befs_inode_info *bi = (struct befs_inode_info *) foo;

 inode_init_once(&bi->vfs_inode);
}
