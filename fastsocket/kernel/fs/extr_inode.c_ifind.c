
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;


 int __iget (struct inode*) ;
 struct inode* find_inode (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*) ;
 int inode_lock ;
 scalar_t__ likely (int const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_on_inode (struct inode*) ;

__attribute__((used)) static struct inode *ifind(struct super_block *sb,
  struct hlist_head *head, int (*test)(struct inode *, void *),
  void *data, const int wait)
{
 struct inode *inode;

 spin_lock(&inode_lock);
 inode = find_inode(sb, head, test, data);
 if (inode) {
  __iget(inode);
  spin_unlock(&inode_lock);
  if (likely(wait))
   wait_on_inode(inode);
  return inode;
 }
 spin_unlock(&inode_lock);
 return ((void*)0);
}
