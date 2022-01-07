
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int backing_dev_info; } ;


 int blk_run_backing_dev (int ,struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int smp_mb () ;

void block_sync_page(struct page *page)
{
 struct address_space *mapping;

 smp_mb();
 mapping = page_mapping(page);
 if (mapping)
  blk_run_backing_dev(mapping->backing_dev_info, page);
}
