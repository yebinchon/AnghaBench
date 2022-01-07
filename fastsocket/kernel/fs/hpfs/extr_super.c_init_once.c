
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpfs_inode_info {int vfs_inode; int i_parent_mutex; int i_mutex; } ;


 int inode_init_once (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct hpfs_inode_info *ei = (struct hpfs_inode_info *) foo;

 mutex_init(&ei->i_mutex);
 mutex_init(&ei->i_parent_mutex);
 inode_init_once(&ei->vfs_inode);
}
