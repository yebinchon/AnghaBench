
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; int i_data; } ;


 int clear_inode (struct inode*) ;
 int hpfs_remove_fnode (int ,int ) ;
 int lock_kernel () ;
 int truncate_inode_pages (int *,int ) ;
 int unlock_kernel () ;

void hpfs_delete_inode(struct inode *inode)
{
 truncate_inode_pages(&inode->i_data, 0);
 lock_kernel();
 hpfs_remove_fnode(inode->i_sb, inode->i_ino);
 unlock_kernel();
 clear_inode(inode);
}
