
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {scalar_t__ host; int tree_lock; int page_tree; } ;


 int BUG_ON (int) ;
 int I_DIRTY_PAGES ;
 int PAGECACHE_TAG_DIRTY ;
 int PagePrivate (struct page*) ;
 int PageUptodate (struct page*) ;
 int TestSetPageDirty (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __mark_inode_dirty (scalar_t__,int ) ;
 int account_page_dirtied (struct page*,struct address_space*) ;
 int page_index (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int radix_tree_tag_set (int *,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int __set_page_dirty_nobuffers(struct page *page)
{
 if (!TestSetPageDirty(page)) {
  struct address_space *mapping = page_mapping(page);
  struct address_space *mapping2;

  if (!mapping)
   return 1;

  spin_lock_irq(&mapping->tree_lock);
  mapping2 = page_mapping(page);
  if (mapping2) {
   BUG_ON(mapping2 != mapping);
   WARN_ON_ONCE(!PagePrivate(page) && !PageUptodate(page));
   account_page_dirtied(page, mapping);
   radix_tree_tag_set(&mapping->page_tree,
    page_index(page), PAGECACHE_TAG_DIRTY);
  }
  spin_unlock_irq(&mapping->tree_lock);
  if (mapping->host) {

   __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);
  }
  return 1;
 }
 return 0;
}
