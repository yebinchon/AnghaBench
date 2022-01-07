
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ehci_iso_stream {int raw_mask; int usecs; int c_usecs; int splits; int udev; int tt_usecs; } ;
struct ehci_iso_sched {int dummy; } ;
struct ehci_hcd {int dummy; } ;


 int cpu_to_hc32 (struct ehci_hcd*,int) ;
 int periodic_usecs (struct ehci_hcd*,int,int) ;
 int tt_available (struct ehci_hcd*,int,int ,int,int,int ) ;
 int tt_no_collision (struct ehci_hcd*,int,int ,int,int) ;

__attribute__((used)) static inline int
sitd_slot_ok (
 struct ehci_hcd *ehci,
 u32 mod,
 struct ehci_iso_stream *stream,
 u32 uframe,
 struct ehci_iso_sched *sched,
 u32 period_uframes
)
{
 u32 mask, tmp;
 u32 frame, uf;

 mask = stream->raw_mask << (uframe & 7);


 if (mask & ~0xffff)
  return 0;






 uframe %= period_uframes;
 do {
  u32 max_used;

  frame = uframe >> 3;
  uf = uframe & 7;
  if (!tt_no_collision (ehci, period_uframes << 3,
    stream->udev, frame, mask))
   return 0;



  max_used = 100 - stream->usecs;
  for (tmp = stream->raw_mask & 0xff; tmp; tmp >>= 1, uf++) {
   if (periodic_usecs (ehci, frame, uf) > max_used)
    return 0;
  }


  if (stream->c_usecs) {
   uf = uframe & 7;
   max_used = 100 - stream->c_usecs;
   do {
    tmp = 1 << uf;
    tmp <<= 8;
    if ((stream->raw_mask & tmp) == 0)
     continue;
    if (periodic_usecs (ehci, frame, uf)
      > max_used)
     return 0;
   } while (++uf < 8);
  }


  uframe += period_uframes;
 } while (uframe < mod);

 stream->splits = cpu_to_hc32(ehci, stream->raw_mask << (uframe & 7));
 return 1;
}
