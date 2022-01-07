
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; scalar_t__ nonblocking; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EAGAIN ;
 int NFSIOS_VFSWRITEPAGE ;
 int NFSIOS_WRITEPAGES ;
 scalar_t__ WB_SYNC_NONE ;
 int nfs_add_stats (struct inode*,int ,int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_page_async_flush (struct nfs_pageio_descriptor*,struct page*,int) ;
 int nfs_pageio_cond_complete (struct nfs_pageio_descriptor*,int ) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;

__attribute__((used)) static int nfs_do_writepage(struct page *page, struct writeback_control *wbc, struct nfs_pageio_descriptor *pgio)
{
 struct inode *inode = page->mapping->host;
 int ret;

 nfs_inc_stats(inode, NFSIOS_VFSWRITEPAGE);
 nfs_add_stats(inode, NFSIOS_WRITEPAGES, 1);

 nfs_pageio_cond_complete(pgio, page->index);
 ret = nfs_page_async_flush(pgio, page,
   wbc->sync_mode == WB_SYNC_NONE ||
   wbc->nonblocking != 0);
 if (ret == -EAGAIN) {
  redirty_page_for_writepage(wbc, page);
  ret = 0;
 }
 return ret;
}
