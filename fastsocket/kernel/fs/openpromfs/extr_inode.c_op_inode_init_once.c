
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void op_inode_init_once(void *data)
{
 struct op_inode_info *oi = (struct op_inode_info *) data;

 inode_init_once(&oi->vfs_inode);
}
