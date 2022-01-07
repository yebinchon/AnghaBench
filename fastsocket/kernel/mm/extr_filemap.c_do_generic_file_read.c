
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct page {int * mapping; } ;
struct inode {int i_blkbits; } ;
struct file_ra_state {int prev_pos; } ;
struct file {struct file_ra_state f_ra; struct address_space* f_mapping; } ;
struct address_space {TYPE_1__* a_ops; struct inode* host; } ;
struct TYPE_8__ {int count; int error; } ;
typedef TYPE_2__ read_descriptor_t ;
typedef unsigned long (* read_actor_t ) (TYPE_2__*,struct page*,unsigned long,unsigned long) ;
typedef unsigned long pgoff_t ;
typedef int loff_t ;
struct TYPE_7__ {int (* readpage ) (struct file*,struct page*) ;int (* is_partially_uptodate ) (struct page*,TYPE_2__*,unsigned long) ;} ;


 int AOP_TRUNCATED_PAGE ;
 int ClearPageError (struct page*) ;
 int EEXIST ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageReadahead (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,unsigned long,int ) ;
 int cond_resched () ;
 int file_accessed (struct file*) ;
 struct page* find_get_page (struct address_space*,unsigned long) ;
 int flush_dcache_page (struct page*) ;
 int i_size_read (struct inode*) ;
 int lock_page_killable (struct page*) ;
 scalar_t__ mapping_writably_mapped (struct address_space*) ;
 int mark_page_accessed (struct page*) ;
 struct page* page_cache_alloc_cold (struct address_space*) ;
 int page_cache_async_readahead (struct address_space*,struct file_ra_state*,struct file*,struct page*,unsigned long,unsigned long) ;
 int page_cache_release (struct page*) ;
 int page_cache_sync_readahead (struct address_space*,struct file_ra_state*,struct file*,unsigned long,unsigned long) ;
 int shrink_readahead_size_eio (struct file*,struct file_ra_state*) ;
 int stub1 (struct page*,TYPE_2__*,unsigned long) ;
 int stub2 (struct file*,struct page*) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void do_generic_file_read(struct file *filp, loff_t *ppos,
  read_descriptor_t *desc, read_actor_t actor)
{
 struct address_space *mapping = filp->f_mapping;
 struct inode *inode = mapping->host;
 struct file_ra_state *ra = &filp->f_ra;
 pgoff_t index;
 pgoff_t last_index;
 pgoff_t prev_index;
 unsigned long offset;
 unsigned int prev_offset;
 int error;

 index = *ppos >> PAGE_CACHE_SHIFT;
 prev_index = ra->prev_pos >> PAGE_CACHE_SHIFT;
 prev_offset = ra->prev_pos & (PAGE_CACHE_SIZE-1);
 last_index = (*ppos + desc->count + PAGE_CACHE_SIZE-1) >> PAGE_CACHE_SHIFT;
 offset = *ppos & ~PAGE_CACHE_MASK;

 for (;;) {
  struct page *page;
  pgoff_t end_index;
  loff_t isize;
  unsigned long nr, ret;

  cond_resched();
find_page:
  page = find_get_page(mapping, index);
  if (!page) {
   page_cache_sync_readahead(mapping,
     ra, filp,
     index, last_index - index);
   page = find_get_page(mapping, index);
   if (unlikely(page == ((void*)0)))
    goto no_cached_page;
  }
  if (PageReadahead(page)) {
   page_cache_async_readahead(mapping,
     ra, filp, page,
     index, last_index - index);
  }
  if (!PageUptodate(page)) {
   if (inode->i_blkbits == PAGE_CACHE_SHIFT ||
     !mapping->a_ops->is_partially_uptodate)
    goto page_not_up_to_date;
   if (!trylock_page(page))
    goto page_not_up_to_date;

   if (!page->mapping)
    goto page_not_up_to_date_locked;
   if (!mapping->a_ops->is_partially_uptodate(page,
        desc, offset))
    goto page_not_up_to_date_locked;
   unlock_page(page);
  }
page_ok:
  isize = i_size_read(inode);
  end_index = (isize - 1) >> PAGE_CACHE_SHIFT;
  if (unlikely(!isize || index > end_index)) {
   page_cache_release(page);
   goto out;
  }


  nr = PAGE_CACHE_SIZE;
  if (index == end_index) {
   nr = ((isize - 1) & ~PAGE_CACHE_MASK) + 1;
   if (nr <= offset) {
    page_cache_release(page);
    goto out;
   }
  }
  nr = nr - offset;





  if (mapping_writably_mapped(mapping))
   flush_dcache_page(page);





  if (prev_index != index || offset != prev_offset)
   mark_page_accessed(page);
  prev_index = index;
  ret = actor(desc, page, offset, nr);
  offset += ret;
  index += offset >> PAGE_CACHE_SHIFT;
  offset &= ~PAGE_CACHE_MASK;
  prev_offset = offset;

  page_cache_release(page);
  if (ret == nr && desc->count)
   continue;
  goto out;

page_not_up_to_date:

  error = lock_page_killable(page);
  if (unlikely(error))
   goto readpage_error;

page_not_up_to_date_locked:

  if (!page->mapping) {
   unlock_page(page);
   page_cache_release(page);
   continue;
  }


  if (PageUptodate(page)) {
   unlock_page(page);
   goto page_ok;
  }

readpage:





  ClearPageError(page);

  error = mapping->a_ops->readpage(filp, page);

  if (unlikely(error)) {
   if (error == AOP_TRUNCATED_PAGE) {
    page_cache_release(page);
    goto find_page;
   }
   goto readpage_error;
  }

  if (!PageUptodate(page)) {
   error = lock_page_killable(page);
   if (unlikely(error))
    goto readpage_error;
   if (!PageUptodate(page)) {
    if (page->mapping == ((void*)0)) {



     unlock_page(page);
     page_cache_release(page);
     goto find_page;
    }
    unlock_page(page);
    shrink_readahead_size_eio(filp, ra);
    error = -EIO;
    goto readpage_error;
   }
   unlock_page(page);
  }

  goto page_ok;

readpage_error:

  desc->error = error;
  page_cache_release(page);
  goto out;

no_cached_page:




  page = page_cache_alloc_cold(mapping);
  if (!page) {
   desc->error = -ENOMEM;
   goto out;
  }
  error = add_to_page_cache_lru(page, mapping,
      index, GFP_KERNEL);
  if (error) {
   page_cache_release(page);
   if (error == -EEXIST)
    goto find_page;
   desc->error = error;
   goto out;
  }
  goto readpage;
 }

out:
 ra->prev_pos = prev_index;
 ra->prev_pos <<= PAGE_CACHE_SHIFT;
 ra->prev_pos |= prev_offset;

 *ppos = ((loff_t)index << PAGE_CACHE_SHIFT) + offset;
 file_accessed(filp);
}
