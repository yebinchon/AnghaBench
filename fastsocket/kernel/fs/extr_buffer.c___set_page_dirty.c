
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct address_space {int host; int tree_lock; int page_tree; } ;


 int I_DIRTY_PAGES ;
 int PAGECACHE_TAG_DIRTY ;
 int PageUptodate (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __mark_inode_dirty (int ,int ) ;
 int account_page_dirtied (struct page*,struct address_space*) ;
 int page_index (struct page*) ;
 int radix_tree_tag_set (int *,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void __set_page_dirty(struct page *page,
  struct address_space *mapping, int warn)
{
 spin_lock_irq(&mapping->tree_lock);
 if (page->mapping) {
  WARN_ON_ONCE(warn && !PageUptodate(page));
  account_page_dirtied(page, mapping);
  radix_tree_tag_set(&mapping->page_tree,
    page_index(page), PAGECACHE_TAG_DIRTY);
 }
 spin_unlock_irq(&mapping->tree_lock);
 __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);
}
