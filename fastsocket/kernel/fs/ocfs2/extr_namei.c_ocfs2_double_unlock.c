
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ocfs2_inode_unlock (struct inode*,int) ;

__attribute__((used)) static void ocfs2_double_unlock(struct inode *inode1, struct inode *inode2)
{
 ocfs2_inode_unlock(inode1, 1);

 if (inode1 != inode2)
  ocfs2_inode_unlock(inode2, 1);
}
