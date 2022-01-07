
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ nr_to_write; scalar_t__ sync_mode; int encountered_congestion; scalar_t__ nonblocking; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct backing_dev_info {int dummy; } ;
struct afs_writeback {TYPE_1__* vnode; int state; } ;
struct address_space {struct backing_dev_info* backing_dev_info; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {int writeback_lock; } ;


 int AFS_WBACK_WRITING ;
 int ASSERT (int ) ;
 int PAGECACHE_TAG_DIRTY ;
 int PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_NONE ;
 int _debug (char*,scalar_t__) ;
 int _enter (char*,scalar_t__,scalar_t__) ;
 int _leave (char*,scalar_t__) ;
 int afs_write_back_from_locked_page (struct afs_writeback*,struct page*) ;
 scalar_t__ bdi_write_congested (struct backing_dev_info*) ;
 int cond_resched () ;
 int find_get_pages_tag (struct address_space*,scalar_t__*,int ,int,struct page**) ;
 int lock_page (struct page*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int afs_writepages_region(struct address_space *mapping,
     struct writeback_control *wbc,
     pgoff_t index, pgoff_t end, pgoff_t *_next)
{
 struct backing_dev_info *bdi = mapping->backing_dev_info;
 struct afs_writeback *wb;
 struct page *page;
 int ret, n;

 _enter(",,%lx,%lx,", index, end);

 do {
  n = find_get_pages_tag(mapping, &index, PAGECACHE_TAG_DIRTY,
           1, &page);
  if (!n)
   break;

  _debug("wback %lx", page->index);

  if (page->index > end) {
   *_next = index;
   page_cache_release(page);
   _leave(" = 0 [%lx]", *_next);
   return 0;
  }






  lock_page(page);

  if (page->mapping != mapping) {
   unlock_page(page);
   page_cache_release(page);
   continue;
  }

  if (wbc->sync_mode != WB_SYNC_NONE)
   wait_on_page_writeback(page);

  if (PageWriteback(page) || !PageDirty(page)) {
   unlock_page(page);
   continue;
  }

  wb = (struct afs_writeback *) page_private(page);
  ASSERT(wb != ((void*)0));

  spin_lock(&wb->vnode->writeback_lock);
  wb->state = AFS_WBACK_WRITING;
  spin_unlock(&wb->vnode->writeback_lock);

  ret = afs_write_back_from_locked_page(wb, page);
  unlock_page(page);
  page_cache_release(page);
  if (ret < 0) {
   _leave(" = %d", ret);
   return ret;
  }

  wbc->nr_to_write -= ret;

  if (wbc->nonblocking && bdi_write_congested(bdi)) {
   wbc->encountered_congestion = 1;
   break;
  }

  cond_resched();
 } while (index < end && wbc->nr_to_write > 0);

 *_next = index;
 _leave(" = 0 [%lx]", *_next);
 return 0;
}
