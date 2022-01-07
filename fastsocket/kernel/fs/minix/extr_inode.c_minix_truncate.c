
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 scalar_t__ INODE_VERSION (struct inode*) ;
 scalar_t__ MINIX_V1 ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int V1_minix_truncate (struct inode*) ;
 int V2_minix_truncate (struct inode*) ;

void minix_truncate(struct inode * inode)
{
 if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode)))
  return;
 if (INODE_VERSION(inode) == MINIX_V1)
  V1_minix_truncate(inode);
 else
  V2_minix_truncate(inode);
}
