
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ehci_sitd {unsigned int index; void** hw_buf_hi; void** hw_buf; void* hw_backpointer; int hw_results; int hw_uframe; int hw_fullspeed_ep; void* hw_next; } ;
struct ehci_iso_stream {int splits; int address; } ;
struct ehci_iso_sched {struct ehci_iso_packet* packet; } ;
struct ehci_iso_packet {int bufp; int buf1; scalar_t__ cross; int transaction; } ;
struct ehci_hcd {int dummy; } ;


 void* EHCI_LIST_END (struct ehci_hcd*) ;
 void* cpu_to_hc32 (struct ehci_hcd*,int) ;

__attribute__((used)) static inline void
sitd_patch(
 struct ehci_hcd *ehci,
 struct ehci_iso_stream *stream,
 struct ehci_sitd *sitd,
 struct ehci_iso_sched *iso_sched,
 unsigned index
)
{
 struct ehci_iso_packet *uf = &iso_sched->packet [index];
 u64 bufp = uf->bufp;

 sitd->hw_next = EHCI_LIST_END(ehci);
 sitd->hw_fullspeed_ep = stream->address;
 sitd->hw_uframe = stream->splits;
 sitd->hw_results = uf->transaction;
 sitd->hw_backpointer = EHCI_LIST_END(ehci);

 bufp = uf->bufp;
 sitd->hw_buf[0] = cpu_to_hc32(ehci, bufp);
 sitd->hw_buf_hi[0] = cpu_to_hc32(ehci, bufp >> 32);

 sitd->hw_buf[1] = cpu_to_hc32(ehci, uf->buf1);
 if (uf->cross)
  bufp += 4096;
 sitd->hw_buf_hi[1] = cpu_to_hc32(ehci, bufp >> 32);
 sitd->index = index;
}
