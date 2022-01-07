
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 struct inode* get_new_inode (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),int (*) (struct inode*,void*),void*) ;
 int hash (struct super_block*,unsigned long) ;
 struct inode* ifind (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*,int) ;
 struct hlist_head* inode_hashtable ;

struct inode *iget5_locked(struct super_block *sb, unsigned long hashval,
  int (*test)(struct inode *, void *),
  int (*set)(struct inode *, void *), void *data)
{
 struct hlist_head *head = inode_hashtable + hash(sb, hashval);
 struct inode *inode;

 inode = ifind(sb, head, test, data, 1);
 if (inode)
  return inode;




 return get_new_inode(sb, head, test, set, data);
}
