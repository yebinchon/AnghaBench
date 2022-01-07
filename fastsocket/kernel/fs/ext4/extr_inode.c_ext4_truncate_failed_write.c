
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_mapping; } ;


 int ext4_truncate (struct inode*) ;
 int truncate_inode_pages (int ,int ) ;

__attribute__((used)) static void ext4_truncate_failed_write(struct inode *inode)
{
 truncate_inode_pages(inode->i_mapping, inode->i_size);
 ext4_truncate(inode);
}
