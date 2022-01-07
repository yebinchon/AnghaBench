
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct address_space {int tree_lock; int a_ops; struct inode* host; } ;
struct TYPE_2__ {void (* freepage ) (struct page*) ;} ;


 int BUG_ON (int) ;
 TYPE_1__* EXT_AOPS (int ) ;
 scalar_t__ IS_AOP_EXT (struct inode*) ;
 int PageLocked (struct page*) ;
 int __remove_from_page_cache (struct page*) ;
 int mem_cgroup_uncharge_cache_page (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void remove_from_page_cache(struct page *page)
{
 struct address_space *mapping = page->mapping;
 void (*freepage)(struct page *) = ((void*)0);
 struct inode *inode = mapping->host;

 BUG_ON(!PageLocked(page));

 if (IS_AOP_EXT(inode))
  freepage = EXT_AOPS(mapping->a_ops)->freepage;

 spin_lock_irq(&mapping->tree_lock);
 __remove_from_page_cache(page);
 spin_unlock_irq(&mapping->tree_lock);
 mem_cgroup_uncharge_cache_page(page);

 if (freepage)
  freepage(page);
}
