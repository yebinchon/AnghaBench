
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file_ra_state {int ra_pages; } ;
struct file {int dummy; } ;
struct address_space {int backing_dev_info; } ;
typedef int pgoff_t ;


 int ClearPageReadahead (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ bdi_read_congested (int ) ;
 int blk_run_backing_dev (int ,int *) ;
 int ondemand_readahead (struct address_space*,struct file_ra_state*,struct file*,int,int ,unsigned long) ;

void
page_cache_async_readahead(struct address_space *mapping,
      struct file_ra_state *ra, struct file *filp,
      struct page *page, pgoff_t offset,
      unsigned long req_size)
{

 if (!ra->ra_pages)
  return;




 if (PageWriteback(page))
  return;

 ClearPageReadahead(page);




 if (bdi_read_congested(mapping->backing_dev_info))
  return;


 ondemand_readahead(mapping, ra, filp, 1, offset, req_size);
}
