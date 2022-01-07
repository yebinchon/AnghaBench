
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_memory_reservation {unsigned long nr_extents; int extent_start; int domid; int extent_order; int address_bits; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned long current_pages; } ;


 unsigned long ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int DOMID_SELF ;
 int GFP_BALLOON ;
 int HYPERVISOR_memory_op (int ,struct xen_memory_reservation*) ;
 int HYPERVISOR_update_va_mapping (unsigned long,int ,int ) ;
 int INVALID_P2M_ENTRY ;
 unsigned long PAGE_SHIFT ;
 int PageHighMem (struct page*) ;
 int XENMEM_decrease_reservation ;
 int __pte_ma (int ) ;
 int __set_phys_to_machine (unsigned long,int ) ;
 scalar_t__ __va (unsigned long) ;
 struct page* alloc_page (int ) ;
 int balloon_append (int ) ;
 TYPE_1__ balloon_stats ;
 int flush_tlb_all () ;
 int * frame_list ;
 int kmap_flush_unused () ;
 unsigned long mfn_to_pfn (int ) ;
 unsigned long page_to_pfn (struct page*) ;
 int pfn_to_mfn (unsigned long) ;
 int pfn_to_page (unsigned long) ;
 int scrub_page (struct page*) ;
 int set_xen_guest_handle (int ,int *) ;

__attribute__((used)) static int decrease_reservation(unsigned long nr_pages)
{
 unsigned long pfn, i;
 struct page *page;
 int need_sleep = 0;
 int ret;
 struct xen_memory_reservation reservation = {
  .address_bits = 0,
  .extent_order = 0,
  .domid = DOMID_SELF
 };

 if (nr_pages > ARRAY_SIZE(frame_list))
  nr_pages = ARRAY_SIZE(frame_list);

 for (i = 0; i < nr_pages; i++) {
  if ((page = alloc_page(GFP_BALLOON)) == ((void*)0)) {
   nr_pages = i;
   need_sleep = 1;
   break;
  }

  pfn = page_to_pfn(page);
  frame_list[i] = pfn_to_mfn(pfn);

  scrub_page(page);

  if (!PageHighMem(page)) {
   ret = HYPERVISOR_update_va_mapping(
    (unsigned long)__va(pfn << PAGE_SHIFT),
    __pte_ma(0), 0);
   BUG_ON(ret);
                }

 }


 kmap_flush_unused();
 flush_tlb_all();


 for (i = 0; i < nr_pages; i++) {
  pfn = mfn_to_pfn(frame_list[i]);
  __set_phys_to_machine(pfn, INVALID_P2M_ENTRY);
  balloon_append(pfn_to_page(pfn));
 }

 set_xen_guest_handle(reservation.extent_start, frame_list);
 reservation.nr_extents = nr_pages;
 ret = HYPERVISOR_memory_op(XENMEM_decrease_reservation, &reservation);
 BUG_ON(ret != nr_pages);

 balloon_stats.current_pages -= nr_pages;

 return need_sleep;
}
