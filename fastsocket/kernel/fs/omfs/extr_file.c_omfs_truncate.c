
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int mark_inode_dirty (struct inode*) ;
 int omfs_shrink_inode (struct inode*) ;

__attribute__((used)) static void omfs_truncate(struct inode *inode)
{
 omfs_shrink_inode(inode);
 mark_inode_dirty(inode);
}
