
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_memory_reservation {unsigned long nr_extents; int extent_start; int domid; int extent_order; int address_bits; } ;
struct page {int dummy; } ;
struct TYPE_2__ {long current_pages; } ;


 unsigned long ARRAY_SIZE (void**) ;
 int BUG_ON (int) ;
 int ClearPageReserved (struct page*) ;
 int DOMID_SELF ;
 long HYPERVISOR_memory_op (int ,struct xen_memory_reservation*) ;
 int HYPERVISOR_update_va_mapping (unsigned long,int ,int ) ;
 int PAGE_KERNEL ;
 unsigned long PAGE_SHIFT ;
 int PageHighMem (struct page*) ;
 int XENFEAT_auto_translated_physmap ;
 int XENMEM_populate_physmap ;
 int __free_page (struct page*) ;
 scalar_t__ __va (unsigned long) ;
 struct page* balloon_first_page () ;
 struct page* balloon_next_page (struct page*) ;
 struct page* balloon_retrieve () ;
 TYPE_1__ balloon_stats ;
 void** frame_list ;
 int init_page_count (struct page*) ;
 int mfn_pte (void*,int ) ;
 void* page_to_pfn (struct page*) ;
 scalar_t__ phys_to_machine_mapping_valid (unsigned long) ;
 int set_phys_to_machine (unsigned long,void*) ;
 int set_xen_guest_handle (int ,void**) ;
 int xen_feature (int ) ;

__attribute__((used)) static int increase_reservation(unsigned long nr_pages)
{
 unsigned long pfn, i;
 struct page *page;
 long rc;
 struct xen_memory_reservation reservation = {
  .address_bits = 0,
  .extent_order = 0,
  .domid = DOMID_SELF
 };

 if (nr_pages > ARRAY_SIZE(frame_list))
  nr_pages = ARRAY_SIZE(frame_list);

 page = balloon_first_page();
 for (i = 0; i < nr_pages; i++) {
  BUG_ON(page == ((void*)0));
  frame_list[i] = page_to_pfn(page);
  page = balloon_next_page(page);
 }

 set_xen_guest_handle(reservation.extent_start, frame_list);
 reservation.nr_extents = nr_pages;
 rc = HYPERVISOR_memory_op(XENMEM_populate_physmap, &reservation);
 if (rc < 0)
  goto out;

 for (i = 0; i < rc; i++) {
  page = balloon_retrieve();
  BUG_ON(page == ((void*)0));

  pfn = page_to_pfn(page);
  BUG_ON(!xen_feature(XENFEAT_auto_translated_physmap) &&
         phys_to_machine_mapping_valid(pfn));

  set_phys_to_machine(pfn, frame_list[i]);


  if (!PageHighMem(page)) {
   int ret;
   ret = HYPERVISOR_update_va_mapping(
    (unsigned long)__va(pfn << PAGE_SHIFT),
    mfn_pte(frame_list[i], PAGE_KERNEL),
    0);
   BUG_ON(ret);
  }


  ClearPageReserved(page);
  init_page_count(page);
  __free_page(page);
 }

 balloon_stats.current_pages += rc;

 out:
 return rc < 0 ? rc : rc != nr_pages;
}
