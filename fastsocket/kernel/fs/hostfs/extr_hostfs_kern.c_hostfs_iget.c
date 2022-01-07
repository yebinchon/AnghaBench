
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; } ;


 long ENOMEM ;
 struct inode* ERR_PTR (long) ;
 int I_NEW ;
 long hostfs_read_inode (struct inode*) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *hostfs_iget(struct super_block *sb)
{
 struct inode *inode;
 long ret;

 inode = iget_locked(sb, 0);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (inode->i_state & I_NEW) {
  ret = hostfs_read_inode(inode);
  if (ret < 0) {
   iget_failed(inode);
   return ERR_PTR(ret);
  }
  unlock_new_inode(inode);
 }
 return inode;
}
