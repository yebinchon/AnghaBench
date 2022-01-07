
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {TYPE_2__* host; struct backing_dev_info* backing_dev_info; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_flags; } ;


 int MS_SNAP_STABLE ;
 int bdi_cap_stable_pages_required (struct backing_dev_info*) ;
 struct address_space* page_mapping (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

void wait_for_stable_page(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 struct backing_dev_info *bdi = mapping->backing_dev_info;

 if (!bdi_cap_stable_pages_required(bdi))
  return;





 wait_on_page_writeback(page);
}
