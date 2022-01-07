
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int tree_lock; int page_tree; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int EAGAIN ;
 int MIGRATE_ASYNC ;
 int NR_FILE_PAGES ;
 int NR_SHMEM ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int SetPageSwapCache (struct page*) ;
 int __dec_zone_page_state (struct page*,int ) ;
 int __inc_zone_page_state (struct page*,int ) ;
 int __put_page (struct page*) ;
 int buffer_migrate_lock_buffers (struct buffer_head*,int) ;
 int get_page (struct page*) ;
 int page_count (struct page*) ;
 int page_freeze_refs (struct page*,int) ;
 int page_has_private (struct page*) ;
 int page_index (struct page*) ;
 int page_private (struct page*) ;
 int page_unfreeze_refs (struct page*,int) ;
 scalar_t__ radix_tree_deref_slot (void**) ;
 void** radix_tree_lookup_slot (int *,int ) ;
 int radix_tree_replace_slot (void**,struct page*) ;
 int set_page_private (struct page*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int migrate_page_move_mapping(struct address_space *mapping,
  struct page *newpage, struct page *page,
  struct buffer_head *head, enum migrate_mode mode)
{
 int expected_count;
 void **pslot;

 if (!mapping) {

  if (page_count(page) != 1)
   return -EAGAIN;
  return 0;
 }

 spin_lock_irq(&mapping->tree_lock);

 pslot = radix_tree_lookup_slot(&mapping->page_tree,
      page_index(page));

 expected_count = 2 + page_has_private(page);
 if (page_count(page) != expected_count ||
   (struct page *)radix_tree_deref_slot(pslot) != page) {
  spin_unlock_irq(&mapping->tree_lock);
  return -EAGAIN;
 }

 if (!page_freeze_refs(page, expected_count)) {
  spin_unlock_irq(&mapping->tree_lock);
  return -EAGAIN;
 }
 if (mode == MIGRATE_ASYNC && head &&
   !buffer_migrate_lock_buffers(head, mode)) {
  page_unfreeze_refs(page, expected_count);
  spin_unlock_irq(&mapping->tree_lock);
  return -EAGAIN;
 }




 get_page(newpage);
 if (PageSwapCache(page)) {
  SetPageSwapCache(newpage);
  set_page_private(newpage, page_private(page));
 }

 radix_tree_replace_slot(pslot, newpage);

 page_unfreeze_refs(page, expected_count);




 __put_page(page);
 __dec_zone_page_state(page, NR_FILE_PAGES);
 __inc_zone_page_state(newpage, NR_FILE_PAGES);
 if (!PageSwapCache(page) && PageSwapBacked(page)) {
  __dec_zone_page_state(page, NR_SHMEM);
  __inc_zone_page_state(newpage, NR_SHMEM);
 }
 spin_unlock_irq(&mapping->tree_lock);

 return 0;
}
