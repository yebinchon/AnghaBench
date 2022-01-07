
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; int index; } ;
struct afs_writeback {int dummy; } ;
struct afs_vnode {int cache; } ;
struct TYPE_2__ {int host; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int BUG_ON (int) ;
 int ClearPagePrivate (struct page*) ;
 scalar_t__ PageFsCache (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int PageWriteback (struct page*) ;
 int _enter (char*,int ,unsigned long) ;
 int _leave (char*) ;
 int afs_put_writeback (struct afs_writeback*) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static void afs_invalidatepage(struct page *page, unsigned long offset)
{
 struct afs_writeback *wb = (struct afs_writeback *) page_private(page);

 _enter("{%lu},%lu", page->index, offset);

 BUG_ON(!PageLocked(page));


 if (offset == 0) {
  if (PagePrivate(page)) {
   if (wb && !PageWriteback(page)) {
    set_page_private(page, 0);
    afs_put_writeback(wb);
   }

   if (!page_private(page))
    ClearPagePrivate(page);
  }
 }

 _leave("");
}
