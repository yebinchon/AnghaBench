
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_inode_info {int vfs_inode; int i_prealloc_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct reiserfs_inode_info *ei = (struct reiserfs_inode_info *)foo;

 INIT_LIST_HEAD(&ei->i_prealloc_list);
 inode_init_once(&ei->vfs_inode);
}
