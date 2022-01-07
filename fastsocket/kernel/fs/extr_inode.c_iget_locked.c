
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 struct inode* get_new_inode_fast (struct super_block*,struct hlist_head*,unsigned long) ;
 int hash (struct super_block*,unsigned long) ;
 struct inode* ifind_fast (struct super_block*,struct hlist_head*,unsigned long) ;
 struct hlist_head* inode_hashtable ;

struct inode *iget_locked(struct super_block *sb, unsigned long ino)
{
 struct hlist_head *head = inode_hashtable + hash(sb, ino);
 struct inode *inode;

 inode = ifind_fast(sb, head, ino);
 if (inode)
  return inode;




 return get_new_inode_fast(sb, head, ino);
}
