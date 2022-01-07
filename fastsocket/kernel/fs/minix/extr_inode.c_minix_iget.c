
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ INODE_VERSION (struct inode*) ;
 int I_NEW ;
 scalar_t__ MINIX_V1 ;
 struct inode* V1_minix_iget (struct inode*) ;
 struct inode* V2_minix_iget (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;

struct inode *minix_iget(struct super_block *sb, unsigned long ino)
{
 struct inode *inode;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 if (INODE_VERSION(inode) == MINIX_V1)
  return V1_minix_iget(inode);
 else
  return V2_minix_iget(inode);
}
