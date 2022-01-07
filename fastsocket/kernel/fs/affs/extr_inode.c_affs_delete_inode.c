
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; scalar_t__ i_size; int i_data; int i_nlink; } ;


 int affs_free_block (int ,int ) ;
 int affs_truncate (struct inode*) ;
 int clear_inode (struct inode*) ;
 int pr_debug (char*,int ,int ) ;
 int truncate_inode_pages (int *,int ) ;

void
affs_delete_inode(struct inode *inode)
{
 pr_debug("AFFS: delete_inode(ino=%lu, nlink=%u)\n", inode->i_ino, inode->i_nlink);
 truncate_inode_pages(&inode->i_data, 0);
 inode->i_size = 0;
 affs_truncate(inode);
 clear_inode(inode);
 affs_free_block(inode->i_sb, inode->i_ino);
}
