
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext3_inode_info {int vfs_inode; int truncate_mutex; int xattr_sem; int i_orphan; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct ext3_inode_info *ei = (struct ext3_inode_info *) foo;

 INIT_LIST_HEAD(&ei->i_orphan);



 mutex_init(&ei->truncate_mutex);
 inode_init_once(&ei->vfs_inode);
}
