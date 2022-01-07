
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {unsigned int i_ino; scalar_t__ i_state; } ;


 int __inode_add_to_lists (struct super_block*,int *,struct inode*) ;
 struct inode* alloc_inode (struct super_block*) ;
 int inode_lock ;
 int spin_lock (int *) ;
 int spin_lock_prefetch (int *) ;
 int spin_unlock (int *) ;

struct inode *new_inode(struct super_block *sb)
{





 static unsigned int last_ino;
 struct inode *inode;

 spin_lock_prefetch(&inode_lock);

 inode = alloc_inode(sb);
 if (inode) {
  spin_lock(&inode_lock);
  __inode_add_to_lists(sb, ((void*)0), inode);
  inode->i_ino = ++last_ino;
  inode->i_state = 0;
  spin_unlock(&inode_lock);
 }
 return inode;
}
