
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int nfs_do_writepage (struct page*,struct writeback_control*,void*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int nfs_writepages_callback(struct page *page, struct writeback_control *wbc, void *data)
{
 int ret;

 ret = nfs_do_writepage(page, wbc, data);
 unlock_page(page);
 return ret;
}
