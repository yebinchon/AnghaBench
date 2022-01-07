
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct urb {unsigned int transfer_dma; int number_of_packets; int transfer_flags; TYPE_1__* iso_frame_desc; } ;
struct ehci_iso_stream {int interval; int bEndpointAddress; } ;
struct ehci_iso_sched {int span; struct ehci_iso_packet* packet; } ;
struct ehci_iso_packet {unsigned int bufp; unsigned int buf1; int cross; int transaction; } ;
struct ehci_hcd {int dummy; } ;
typedef unsigned int dma_addr_t ;
struct TYPE_2__ {int length; unsigned int offset; } ;


 unsigned int SITD_IOC ;
 unsigned int SITD_STS_ACTIVE ;
 int URB_NO_INTERRUPT ;
 int USB_DIR_IN ;
 int cpu_to_hc32 (struct ehci_hcd*,unsigned int) ;

__attribute__((used)) static inline void
sitd_sched_init(
 struct ehci_hcd *ehci,
 struct ehci_iso_sched *iso_sched,
 struct ehci_iso_stream *stream,
 struct urb *urb
)
{
 unsigned i;
 dma_addr_t dma = urb->transfer_dma;


 iso_sched->span = urb->number_of_packets * stream->interval;




 for (i = 0; i < urb->number_of_packets; i++) {
  struct ehci_iso_packet *packet = &iso_sched->packet [i];
  unsigned length;
  dma_addr_t buf;
  u32 trans;

  length = urb->iso_frame_desc [i].length & 0x03ff;
  buf = dma + urb->iso_frame_desc [i].offset;

  trans = SITD_STS_ACTIVE;
  if (((i + 1) == urb->number_of_packets)
    && !(urb->transfer_flags & URB_NO_INTERRUPT))
   trans |= SITD_IOC;
  trans |= length << 16;
  packet->transaction = cpu_to_hc32(ehci, trans);


  packet->bufp = buf;
  packet->buf1 = (buf + length) & ~0x0fff;
  if (packet->buf1 != (buf & ~(u64)0x0fff))
   packet->cross = 1;


  if (stream->bEndpointAddress & USB_DIR_IN)
   continue;
  length = (length + 187) / 188;
  if (length > 1)
   length |= 1 << 3;
  packet->buf1 |= length;
 }
}
