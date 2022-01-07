
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ehci_hcd {int dummy; } ;


 int periodic_usecs (struct ehci_hcd*,int,int) ;

__attribute__((used)) static inline int
itd_slot_ok (
 struct ehci_hcd *ehci,
 u32 mod,
 u32 uframe,
 u8 usecs,
 u32 period
)
{
 uframe %= period;
 do {

  if (periodic_usecs (ehci, uframe >> 3, uframe & 0x7)
    > (100 - usecs))
   return 0;


  uframe += period;
 } while (uframe < mod);
 return 1;
}
