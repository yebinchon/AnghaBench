
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct address_space {int tree_lock; int a_ops; struct inode* host; } ;
struct TYPE_2__ {void (* freepage ) (struct page*) ;} ;


 int BUG_ON (scalar_t__) ;
 TYPE_1__* EXT_AOPS (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_AOP_EXT (struct inode*) ;
 scalar_t__ PageDirty (struct page*) ;
 int __remove_from_page_cache (struct page*) ;
 int clear_page_mlock (struct page*) ;
 int mem_cgroup_uncharge_cache_page (struct page*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_has_private (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int try_to_release_page (struct page*,int ) ;

__attribute__((used)) static int
invalidate_complete_page2(struct address_space *mapping, struct page *page)
{
 struct inode *inode = mapping->host;
 void (*freepage)(struct page *);

 if (page->mapping != mapping)
  return 0;

 if (page_has_private(page) && !try_to_release_page(page, GFP_KERNEL))
  return 0;

 spin_lock_irq(&mapping->tree_lock);
 if (PageDirty(page))
  goto failed;

 clear_page_mlock(page);
 BUG_ON(page_has_private(page));
 __remove_from_page_cache(page);
 spin_unlock_irq(&mapping->tree_lock);
 mem_cgroup_uncharge_cache_page(page);

 if (IS_AOP_EXT(inode)) {
  freepage = EXT_AOPS(mapping->a_ops)->freepage;
  if (freepage != ((void*)0))
   freepage(page);
 }

 page_cache_release(page);
 return 1;
failed:
 spin_unlock_irq(&mapping->tree_lock);
 return 0;
}
