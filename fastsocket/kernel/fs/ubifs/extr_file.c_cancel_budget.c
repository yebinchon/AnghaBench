
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int ui_mutex; int dirty; } ;
struct ubifs_info {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PageChecked (struct page*) ;
 int PagePrivate (struct page*) ;
 int mutex_unlock (int *) ;
 int release_existing_page_budget (struct ubifs_info*) ;
 int release_new_page_budget (struct ubifs_info*) ;
 int ubifs_release_dirty_inode_budget (struct ubifs_info*,struct ubifs_inode*) ;

__attribute__((used)) static void cancel_budget(struct ubifs_info *c, struct page *page,
     struct ubifs_inode *ui, int appending)
{
 if (appending) {
  if (!ui->dirty)
   ubifs_release_dirty_inode_budget(c, ui);
  mutex_unlock(&ui->ui_mutex);
 }
 if (!PagePrivate(page)) {
  if (PageChecked(page))
   release_new_page_budget(c);
  else
   release_existing_page_budget(c);
 }
}
