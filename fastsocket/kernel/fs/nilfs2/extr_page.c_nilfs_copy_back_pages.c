
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {struct address_space* mapping; scalar_t__ index; } ;
struct address_space {int tree_lock; int page_tree; int nrpages; } ;
typedef scalar_t__ pgoff_t ;


 int EEXIST ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGEVEC_SIZE ;
 int PageDirty (struct page*) ;
 int WARN_ON (int) ;
 int cond_resched () ;
 struct page* find_lock_page (struct address_space*,scalar_t__) ;
 int lock_page (struct page*) ;
 int nilfs_copy_page (struct page*,struct page*,int ) ;
 int page_cache_release (struct page*) ;
 unsigned int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int ) ;
 unsigned int pagevec_lookup (struct pagevec*,struct address_space*,scalar_t__,int ) ;
 int pagevec_release (struct pagevec*) ;
 struct page* radix_tree_delete (int *,scalar_t__) ;
 int radix_tree_insert (int *,scalar_t__,struct page*) ;
 int radix_tree_tag_set (int *,scalar_t__,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

void nilfs_copy_back_pages(struct address_space *dmap,
      struct address_space *smap)
{
 struct pagevec pvec;
 unsigned int i, n;
 pgoff_t index = 0;
 int err;

 pagevec_init(&pvec, 0);
repeat:
 n = pagevec_lookup(&pvec, smap, index, PAGEVEC_SIZE);
 if (!n)
  return;
 index = pvec.pages[n - 1]->index + 1;

 for (i = 0; i < pagevec_count(&pvec); i++) {
  struct page *page = pvec.pages[i], *dpage;
  pgoff_t offset = page->index;

  lock_page(page);
  dpage = find_lock_page(dmap, offset);
  if (dpage) {

   WARN_ON(PageDirty(dpage));
   nilfs_copy_page(dpage, page, 0);
   unlock_page(dpage);
   page_cache_release(dpage);
  } else {
   struct page *page2;


   spin_lock_irq(&smap->tree_lock);
   page2 = radix_tree_delete(&smap->page_tree, offset);
   WARN_ON(page2 != page);

   smap->nrpages--;
   spin_unlock_irq(&smap->tree_lock);

   spin_lock_irq(&dmap->tree_lock);
   err = radix_tree_insert(&dmap->page_tree, offset, page);
   if (unlikely(err < 0)) {
    WARN_ON(err == -EEXIST);
    page->mapping = ((void*)0);
    page_cache_release(page);
   } else {
    page->mapping = dmap;
    dmap->nrpages++;
    if (PageDirty(page))
     radix_tree_tag_set(&dmap->page_tree,
          offset,
          PAGECACHE_TAG_DIRTY);
   }
   spin_unlock_irq(&dmap->tree_lock);
  }
  unlock_page(page);
 }
 pagevec_release(&pvec);
 cond_resched();

 goto repeat;
}
