
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;
typedef unsigned int ino_t ;


 struct inode* find_inode_fast (struct super_block*,struct hlist_head*,unsigned int) ;
 int hash (struct super_block*,unsigned int) ;
 struct hlist_head* inode_hashtable ;
 int inode_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

ino_t iunique(struct super_block *sb, ino_t max_reserved)
{





 static unsigned int counter;
 struct inode *inode;
 struct hlist_head *head;
 ino_t res;

 spin_lock(&inode_lock);
 do {
  if (counter <= max_reserved)
   counter = max_reserved + 1;
  res = counter++;
  head = inode_hashtable + hash(sb, res);
  inode = find_inode_fast(sb, head, res);
 } while (inode != ((void*)0));
 spin_unlock(&inode_lock);

 return res;
}
