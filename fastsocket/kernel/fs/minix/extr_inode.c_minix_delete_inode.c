
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_data; } ;


 int minix_free_inode (struct inode*) ;
 int minix_truncate (struct inode*) ;
 int truncate_inode_pages (int *,int ) ;

__attribute__((used)) static void minix_delete_inode(struct inode *inode)
{
 truncate_inode_pages(&inode->i_data, 0);
 inode->i_size = 0;
 minix_truncate(inode);
 minix_free_inode(inode);
}
