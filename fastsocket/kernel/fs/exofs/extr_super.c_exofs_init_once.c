
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_i_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void exofs_init_once(void *foo)
{
 struct exofs_i_info *oi = foo;

 inode_init_once(&oi->vfs_inode);
}
