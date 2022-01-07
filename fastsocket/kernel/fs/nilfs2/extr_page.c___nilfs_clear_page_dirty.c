
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; struct address_space* mapping; } ;
struct address_space {int tree_lock; int page_tree; } ;


 int PAGECACHE_TAG_DIRTY ;
 int PG_dirty ;
 int TestClearPageDirty (struct page*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int page_index (struct page*) ;
 int radix_tree_tag_clear (int *,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int __nilfs_clear_page_dirty(struct page *page)
{
 struct address_space *mapping = page->mapping;

 if (mapping) {
  spin_lock_irq(&mapping->tree_lock);
  if (test_bit(PG_dirty, &page->flags)) {
   radix_tree_tag_clear(&mapping->page_tree,
          page_index(page),
          PAGECACHE_TAG_DIRTY);
   spin_unlock_irq(&mapping->tree_lock);
   return clear_page_dirty_for_io(page);
  }
  spin_unlock_irq(&mapping->tree_lock);
  return 0;
 }
 return TestClearPageDirty(page);
}
