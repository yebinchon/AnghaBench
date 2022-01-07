
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int nr_to_write; int encountered_congestion; scalar_t__ nonblocking; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct backing_dev_info {int dummy; } ;
struct afs_writeback {int dummy; } ;
struct TYPE_2__ {struct backing_dev_info* backing_dev_info; } ;


 int ASSERT (int ) ;
 int _enter (char*,int ) ;
 int _leave (char*,...) ;
 int afs_write_back_from_locked_page (struct afs_writeback*,struct page*) ;
 scalar_t__ bdi_write_congested (struct backing_dev_info*) ;
 scalar_t__ page_private (struct page*) ;
 int unlock_page (struct page*) ;

int afs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct backing_dev_info *bdi = page->mapping->backing_dev_info;
 struct afs_writeback *wb;
 int ret;

 _enter("{%lx},", page->index);

 wb = (struct afs_writeback *) page_private(page);
 ASSERT(wb != ((void*)0));

 ret = afs_write_back_from_locked_page(wb, page);
 unlock_page(page);
 if (ret < 0) {
  _leave(" = %d", ret);
  return 0;
 }

 wbc->nr_to_write -= ret;
 if (wbc->nonblocking && bdi_write_congested(bdi))
  wbc->encountered_congestion = 1;

 _leave(" = 0");
 return 0;
}
