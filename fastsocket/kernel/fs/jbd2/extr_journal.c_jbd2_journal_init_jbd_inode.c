
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jbd2_inode {int i_list; scalar_t__ i_flags; struct inode* i_vfs_inode; int * i_next_transaction; int * i_transaction; } ;
struct inode {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;

void jbd2_journal_init_jbd_inode(struct jbd2_inode *jinode, struct inode *inode)
{
 jinode->i_transaction = ((void*)0);
 jinode->i_next_transaction = ((void*)0);
 jinode->i_vfs_inode = inode;
 jinode->i_flags = 0;
 INIT_LIST_HEAD(&jinode->i_list);
}
