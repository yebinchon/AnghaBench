
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int SetPageChecked (struct page*) ;
 int __set_page_dirty_buffers (struct page*) ;
 int __set_page_dirty_nobuffers (struct page*) ;
 scalar_t__ reiserfs_file_data_log (struct inode*) ;

__attribute__((used)) static int reiserfs_set_page_dirty(struct page *page)
{
 struct inode *inode = page->mapping->host;
 if (reiserfs_file_data_log(inode)) {
  SetPageChecked(page);
  return __set_page_dirty_nobuffers(page);
 }
 return __set_page_dirty_buffers(page);
}
