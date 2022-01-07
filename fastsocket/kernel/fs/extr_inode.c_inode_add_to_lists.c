
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_ino; } ;
struct hlist_head {int dummy; } ;


 int __inode_add_to_lists (struct super_block*,struct hlist_head*,struct inode*) ;
 int hash (struct super_block*,int ) ;
 struct hlist_head* inode_hashtable ;
 int inode_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inode_add_to_lists(struct super_block *sb, struct inode *inode)
{
 struct hlist_head *head = inode_hashtable + hash(sb, inode->i_ino);

 spin_lock(&inode_lock);
 __inode_add_to_lists(sb, head, inode);
 spin_unlock(&inode_lock);
}
