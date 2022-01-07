
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct affs_inode_info {int vfs_inode; int i_ext_lock; int i_link_lock; } ;


 int init_MUTEX (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct affs_inode_info *ei = (struct affs_inode_info *) foo;

 init_MUTEX(&ei->i_link_lock);
 init_MUTEX(&ei->i_ext_lock);
 inode_init_once(&ei->vfs_inode);
}
