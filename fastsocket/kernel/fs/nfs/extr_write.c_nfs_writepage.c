
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int nfs_writepage_locked (struct page*,struct writeback_control*) ;
 int unlock_page (struct page*) ;

int nfs_writepage(struct page *page, struct writeback_control *wbc)
{
 int ret;

 ret = nfs_writepage_locked(page, wbc);
 unlock_page(page);
 return ret;
}
