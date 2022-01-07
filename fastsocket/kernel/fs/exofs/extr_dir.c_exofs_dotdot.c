
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct exofs_dir_entry {int dummy; } ;


 int IS_ERR (struct page*) ;
 struct page* exofs_get_page (struct inode*,int ) ;
 struct exofs_dir_entry* exofs_next_entry (struct exofs_dir_entry*) ;
 scalar_t__ page_address (struct page*) ;

struct exofs_dir_entry *exofs_dotdot(struct inode *dir, struct page **p)
{
 struct page *page = exofs_get_page(dir, 0);
 struct exofs_dir_entry *de = ((void*)0);

 if (!IS_ERR(page)) {
  de = exofs_next_entry(
    (struct exofs_dir_entry *)page_address(page));
  *p = page;
 }
 return de;
}
