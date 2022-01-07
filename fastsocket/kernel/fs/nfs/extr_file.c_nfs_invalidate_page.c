
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int host; } ;


 int PAGECACHE ;
 int dfprintk (int ,char*,struct page*,unsigned long) ;
 int nfs_fscache_invalidate_page (struct page*,int ) ;
 int nfs_wb_page_cancel (int ,struct page*) ;

__attribute__((used)) static void nfs_invalidate_page(struct page *page, unsigned long offset)
{
 dfprintk(PAGECACHE, "NFS: invalidate_page(%p, %lu)\n", page, offset);

 if (offset != 0)
  return;

 nfs_wb_page_cancel(page->mapping->host, page);

 nfs_fscache_invalidate_page(page, page->mapping->host);
}
