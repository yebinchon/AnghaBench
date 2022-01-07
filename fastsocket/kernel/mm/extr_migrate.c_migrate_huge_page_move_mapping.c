
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int tree_lock; int page_tree; } ;


 int EAGAIN ;
 int __put_page (struct page*) ;
 int get_page (struct page*) ;
 int page_count (struct page*) ;
 int page_freeze_refs (struct page*,int) ;
 int page_has_private (struct page*) ;
 int page_index (struct page*) ;
 int page_unfreeze_refs (struct page*,int) ;
 scalar_t__ radix_tree_deref_slot (void**) ;
 void** radix_tree_lookup_slot (int *,int ) ;
 int radix_tree_replace_slot (void**,struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int migrate_huge_page_move_mapping(struct address_space *mapping,
       struct page *newpage, struct page *page)
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

 get_page(newpage);

 radix_tree_replace_slot(pslot, newpage);

 page_unfreeze_refs(page, expected_count);

 __put_page(page);

 spin_unlock_irq(&mapping->tree_lock);
 return 0;
}
