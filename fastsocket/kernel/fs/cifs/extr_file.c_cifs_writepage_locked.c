
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;


 int EAGAIN ;
 int FreeXid (int) ;
 int GetXid () ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ WB_SYNC_ALL ;
 int cFYI (int,char*) ;
 int cifs_partialpagewrite (struct page*,int ,int ) ;
 int end_page_writeback (struct page*) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_page_writeback (struct page*) ;

__attribute__((used)) static int
cifs_writepage_locked(struct page *page, struct writeback_control *wbc)
{
 int rc;
 int xid;

 xid = GetXid();

 page_cache_get(page);
 if (!PageUptodate(page))
  cFYI(1, "ppw - page not up to date");
 set_page_writeback(page);
retry_write:
 rc = cifs_partialpagewrite(page, 0, PAGE_CACHE_SIZE);
 if (rc == -EAGAIN && wbc->sync_mode == WB_SYNC_ALL)
  goto retry_write;
 else if (rc == -EAGAIN)
  redirty_page_for_writepage(wbc, page);
 else if (rc != 0)
  SetPageError(page);
 else
  SetPageUptodate(page);
 end_page_writeback(page);
 page_cache_release(page);
 FreeXid(xid);
 return rc;
}
