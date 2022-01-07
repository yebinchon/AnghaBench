
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;


 int reiserfs_wait_on_write_block (int ) ;
 int reiserfs_write_full_page (struct page*,struct writeback_control*) ;

__attribute__((used)) static int reiserfs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 reiserfs_wait_on_write_block(inode->i_sb);
 return reiserfs_write_full_page(page, wbc);
}
