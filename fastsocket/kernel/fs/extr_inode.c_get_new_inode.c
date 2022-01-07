
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; } ;
struct hlist_head {int dummy; } ;


 int I_LOCK ;
 int I_NEW ;
 int __iget (struct inode*) ;
 int __inode_add_to_lists (struct super_block*,struct hlist_head*,struct inode*) ;
 struct inode* alloc_inode (struct super_block*) ;
 int destroy_inode (struct inode*) ;
 struct inode* find_inode (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*) ;
 int inode_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_on_inode (struct inode*) ;

__attribute__((used)) static struct inode *get_new_inode(struct super_block *sb,
    struct hlist_head *head,
    int (*test)(struct inode *, void *),
    int (*set)(struct inode *, void *),
    void *data)
{
 struct inode *inode;

 inode = alloc_inode(sb);
 if (inode) {
  struct inode *old;

  spin_lock(&inode_lock);

  old = find_inode(sb, head, test, data);
  if (!old) {
   if (set(inode, data))
    goto set_failed;

   __inode_add_to_lists(sb, head, inode);
   inode->i_state = I_LOCK|I_NEW;
   spin_unlock(&inode_lock);




   return inode;
  }






  __iget(old);
  spin_unlock(&inode_lock);
  destroy_inode(inode);
  inode = old;
  wait_on_inode(inode);
 }
 return inode;

set_failed:
 spin_unlock(&inode_lock);
 destroy_inode(inode);
 return ((void*)0);
}
