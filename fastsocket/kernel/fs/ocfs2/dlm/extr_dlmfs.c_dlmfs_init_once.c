
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlmfs_inode_private {int ip_vfs_inode; int * ip_parent; int * ip_dlm; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void dlmfs_init_once(void *foo)
{
 struct dlmfs_inode_private *ip =
  (struct dlmfs_inode_private *) foo;

 ip->ip_dlm = ((void*)0);
 ip->ip_parent = ((void*)0);

 inode_init_once(&ip->ip_vfs_inode);
}
