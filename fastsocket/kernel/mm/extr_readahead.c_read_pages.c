
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; int lru; } ;
struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* readpages ) (struct file*,struct address_space*,struct list_head*,unsigned int) ;int (* readpage ) (struct file*,struct page*) ;} ;


 int GFP_KERNEL ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int ) ;
 int list_del (int *) ;
 struct page* list_to_page (struct list_head*) ;
 int page_cache_release (struct page*) ;
 int put_pages_list (struct list_head*) ;
 int stub1 (struct file*,struct address_space*,struct list_head*,unsigned int) ;
 int stub2 (struct file*,struct page*) ;

__attribute__((used)) static int read_pages(struct address_space *mapping, struct file *filp,
  struct list_head *pages, unsigned nr_pages)
{
 unsigned page_idx;
 int ret;

 if (mapping->a_ops->readpages) {
  ret = mapping->a_ops->readpages(filp, mapping, pages, nr_pages);

  put_pages_list(pages);
  goto out;
 }

 for (page_idx = 0; page_idx < nr_pages; page_idx++) {
  struct page *page = list_to_page(pages);
  list_del(&page->lru);
  if (!add_to_page_cache_lru(page, mapping,
     page->index, GFP_KERNEL)) {
   mapping->a_ops->readpage(filp, page);
  }
  page_cache_release(page);
 }
 ret = 0;
out:
 return ret;
}
