
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_operations {void (* delete_inode ) (struct inode*) ;} ;
struct inode {int i_state; int i_hash; int i_data; int i_sb_list; int i_list; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int nr_inodes; } ;
struct TYPE_3__ {struct super_operations* s_op; } ;


 int BUG_ON (int) ;
 int I_CLEAR ;
 int I_FREEING ;
 int I_NEW ;
 int WARN_ON (int) ;
 int clear_inode (struct inode*) ;
 int destroy_inode (struct inode*) ;
 int hlist_del_init (int *) ;
 int inode_lock ;
 TYPE_2__ inodes_stat ;
 int is_bad_inode (struct inode*) ;
 int list_del_init (int *) ;
 int security_inode_delete (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_inode_pages (int *,int ) ;
 int vfs_dq_init (struct inode*) ;
 int wake_up_inode (struct inode*) ;

void generic_delete_inode(struct inode *inode)
{
 const struct super_operations *op = inode->i_sb->s_op;

 list_del_init(&inode->i_list);
 list_del_init(&inode->i_sb_list);
 WARN_ON(inode->i_state & I_NEW);
 inode->i_state |= I_FREEING;
 inodes_stat.nr_inodes--;
 spin_unlock(&inode_lock);

 security_inode_delete(inode);

 if (op->delete_inode) {
  void (*delete)(struct inode *) = op->delete_inode;
  if (!is_bad_inode(inode))
   vfs_dq_init(inode);




  delete(inode);
 } else {
  truncate_inode_pages(&inode->i_data, 0);
  clear_inode(inode);
 }
 spin_lock(&inode_lock);
 hlist_del_init(&inode->i_hash);
 spin_unlock(&inode_lock);
 wake_up_inode(inode);
 BUG_ON(inode->i_state != I_CLEAR);
 destroy_inode(inode);
}
