
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 int __iget (struct inode*) ;
 struct inode* find_inode_fast (struct super_block*,struct hlist_head*,unsigned long) ;
 int inode_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_on_inode (struct inode*) ;

__attribute__((used)) static struct inode *ifind_fast(struct super_block *sb,
  struct hlist_head *head, unsigned long ino)
{
 struct inode *inode;

 spin_lock(&inode_lock);
 inode = find_inode_fast(sb, head, ino);
 if (inode) {
  __iget(inode);
  spin_unlock(&inode_lock);
  wait_on_inode(inode);
  return inode;
 }
 spin_unlock(&inode_lock);
 return ((void*)0);
}
