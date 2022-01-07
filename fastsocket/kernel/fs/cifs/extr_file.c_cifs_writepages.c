
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct writeback_control {int encountered_congestion; scalar_t__ range_start; scalar_t__ range_end; scalar_t__ sync_mode; scalar_t__ nr_to_write; scalar_t__ range_cyclic; scalar_t__ nonblocking; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct cifs_writedata {scalar_t__ sync_mode; unsigned int nr_pages; int pagesz; int refcount; struct page** pages; TYPE_2__* cfile; int pid; scalar_t__ tailsz; scalar_t__ bytes; scalar_t__ offset; } ;
struct cifs_sb_info {int wsize; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {scalar_t__ writeback_index; TYPE_1__* host; struct backing_dev_info* backing_dev_info; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {int pid; } ;
struct TYPE_5__ {int i_sb; } ;


 int CIFS_I (TYPE_1__*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EAGAIN ;
 int EBADF ;
 int ENOMEM ;
 scalar_t__ LLONG_MAX ;
 int PAGECACHE_TAG_DIRTY ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageError (struct page*) ;
 scalar_t__ WB_SYNC_ALL ;
 scalar_t__ WB_SYNC_NONE ;
 scalar_t__ bdi_write_congested (struct backing_dev_info*) ;
 int cERROR (int,char*) ;
 int cifsFileInfo_put (TYPE_2__*) ;
 int cifs_async_writev (struct cifs_writedata*) ;
 struct cifs_writedata* cifs_writedata_alloc (unsigned int,int *) ;
 int cifs_writedata_release ;
 int cifs_writev_complete_ops ;
 int clear_page_dirty_for_io (struct page*) ;
 int end_page_writeback (struct page*) ;
 unsigned int find_get_pages_tag (struct address_space*,scalar_t__*,int ,scalar_t__,struct page**) ;
 TYPE_2__* find_writable_file (int ,int) ;
 int generic_writepages (struct address_space*,struct writeback_control*) ;
 scalar_t__ i_size_read (TYPE_1__*) ;
 int kref_put (int *,int ) ;
 int lock_page (struct page*) ;
 int mapping_set_error (struct address_space*,int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_offset (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_page_writeback (struct page*) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int cifs_writepages(struct address_space *mapping,
      struct writeback_control *wbc)
{
 struct backing_dev_info *bdi = mapping->backing_dev_info;
 struct cifs_sb_info *cifs_sb = CIFS_SB(mapping->host->i_sb);
 bool done = 0, scanned = 0, range_whole = 0;
 pgoff_t end, index;
 struct cifs_writedata *wdata;
 struct page *page;
 int rc = 0;





 if (wbc->nonblocking && bdi_write_congested(bdi)) {
  wbc->encountered_congestion = 1;
  return 0;
 }





 if (cifs_sb->wsize < PAGE_CACHE_SIZE)
  return generic_writepages(mapping, wbc);

 if (wbc->range_cyclic) {
  index = mapping->writeback_index;
  end = -1;
 } else {
  index = wbc->range_start >> PAGE_CACHE_SHIFT;
  end = wbc->range_end >> PAGE_CACHE_SHIFT;
  if (wbc->range_start == 0 && wbc->range_end == LLONG_MAX)
   range_whole = 1;
  scanned = 1;
 }
retry:
 while (!done && index <= end) {
  unsigned int i, nr_pages, found_pages;
  pgoff_t next = 0, tofind;
  struct page **pages;

  tofind = min((cifs_sb->wsize / PAGE_CACHE_SIZE) - 1,
    end - index) + 1;

  wdata = cifs_writedata_alloc((unsigned int)tofind,
          &cifs_writev_complete_ops);
  if (!wdata) {
   rc = -ENOMEM;
   break;
  }







  found_pages = 0;
  pages = wdata->pages;
  do {
   nr_pages = find_get_pages_tag(mapping, &index,
       PAGECACHE_TAG_DIRTY,
       tofind, pages);
   found_pages += nr_pages;
   tofind -= nr_pages;
   pages += nr_pages;
  } while (nr_pages && tofind && index <= end);

  if (found_pages == 0) {
   kref_put(&wdata->refcount, cifs_writedata_release);
   break;
  }

  nr_pages = 0;
  for (i = 0; i < found_pages; i++) {
   page = wdata->pages[i];
   if (nr_pages == 0)
    lock_page(page);
   else if (!trylock_page(page))
    break;

   if (unlikely(page->mapping != mapping)) {
    unlock_page(page);
    break;
   }

   if (!wbc->range_cyclic && page->index > end) {
    done = 1;
    unlock_page(page);
    break;
   }

   if (next && (page->index != next)) {

    unlock_page(page);
    break;
   }

   if (wbc->sync_mode != WB_SYNC_NONE)
    wait_on_page_writeback(page);

   if (PageWriteback(page) ||
     !clear_page_dirty_for_io(page)) {
    unlock_page(page);
    break;
   }





   set_page_writeback(page);

   if (page_offset(page) >= i_size_read(mapping->host)) {
    done = 1;
    unlock_page(page);
    end_page_writeback(page);
    break;
   }

   wdata->pages[i] = page;
   next = page->index + 1;
   ++nr_pages;
  }


  if (nr_pages == 0)
   index = wdata->pages[0]->index + 1;


  for (i = nr_pages; i < found_pages; i++) {
   page_cache_release(wdata->pages[i]);
   wdata->pages[i] = ((void*)0);
  }


  if (nr_pages == 0) {
   kref_put(&wdata->refcount, cifs_writedata_release);
   continue;
  }

  wdata->sync_mode = wbc->sync_mode;
  wdata->nr_pages = nr_pages;
  wdata->offset = page_offset(wdata->pages[0]);
  wdata->pagesz = PAGE_CACHE_SIZE;
  wdata->tailsz =
   min(i_size_read(mapping->host) -
       page_offset(wdata->pages[nr_pages - 1]),
       (loff_t)PAGE_CACHE_SIZE);
  wdata->bytes = ((nr_pages - 1) * PAGE_CACHE_SIZE) +
     wdata->tailsz;

  do {
   if (wdata->cfile != ((void*)0))
    cifsFileInfo_put(wdata->cfile);
   wdata->cfile = find_writable_file(CIFS_I(mapping->host),
         0);
   if (!wdata->cfile) {
    cERROR(1, "No writable handles for inode");
    rc = -EBADF;
    break;
   }
   wdata->pid = wdata->cfile->pid;
   rc = cifs_async_writev(wdata);
  } while (wbc->sync_mode == WB_SYNC_ALL && rc == -EAGAIN);

  for (i = 0; i < nr_pages; ++i)
   unlock_page(wdata->pages[i]);


  if (rc != 0) {
   for (i = 0; i < nr_pages; ++i) {
    if (rc == -EAGAIN)
     redirty_page_for_writepage(wbc,
          wdata->pages[i]);
    else
     SetPageError(wdata->pages[i]);
    end_page_writeback(wdata->pages[i]);
    page_cache_release(wdata->pages[i]);
   }
   if (rc != -EAGAIN)
    mapping_set_error(mapping, rc);
  }
  kref_put(&wdata->refcount, cifs_writedata_release);

  wbc->nr_to_write -= nr_pages;
  if (wbc->nr_to_write <= 0)
   done = 1;

  index = next;
 }

 if (!scanned && !done) {




  scanned = 1;
  index = 0;
  goto retry;
 }

 if (wbc->range_cyclic || (range_whole && wbc->nr_to_write > 0))
  mapping->writeback_index = index;

 return rc;
}
