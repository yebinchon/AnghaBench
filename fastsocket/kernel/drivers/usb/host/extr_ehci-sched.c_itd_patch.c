
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct ehci_itd {unsigned int pg; unsigned int* index; int * hw_bufp_hi; int * hw_bufp; int * hw_transaction; } ;
struct ehci_iso_sched {struct ehci_iso_packet* packet; } ;
struct ehci_iso_packet {int bufp; int cross; int transaction; } ;
struct ehci_hcd {int dummy; } ;


 int cpu_to_hc32 (struct ehci_hcd*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void
itd_patch(
 struct ehci_hcd *ehci,
 struct ehci_itd *itd,
 struct ehci_iso_sched *iso_sched,
 unsigned index,
 u16 uframe
)
{
 struct ehci_iso_packet *uf = &iso_sched->packet [index];
 unsigned pg = itd->pg;



 uframe &= 0x07;
 itd->index [uframe] = index;

 itd->hw_transaction[uframe] = uf->transaction;
 itd->hw_transaction[uframe] |= cpu_to_hc32(ehci, pg << 12);
 itd->hw_bufp[pg] |= cpu_to_hc32(ehci, uf->bufp & ~(u32)0);
 itd->hw_bufp_hi[pg] |= cpu_to_hc32(ehci, (u32)(uf->bufp >> 32));


 if (unlikely (uf->cross)) {
  u64 bufp = uf->bufp + 4096;

  itd->pg = ++pg;
  itd->hw_bufp[pg] |= cpu_to_hc32(ehci, bufp & ~(u32)0);
  itd->hw_bufp_hi[pg] |= cpu_to_hc32(ehci, (u32)(bufp >> 32));
 }
}
