
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 int hash (struct super_block*,unsigned long) ;
 struct inode* ifind_fast (struct super_block*,struct hlist_head*,unsigned long) ;
 struct hlist_head* inode_hashtable ;

struct inode *ilookup(struct super_block *sb, unsigned long ino)
{
 struct hlist_head *head = inode_hashtable + hash(sb, ino);

 return ifind_fast(sb, head, ino);
}
