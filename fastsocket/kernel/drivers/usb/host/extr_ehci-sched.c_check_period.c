
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {unsigned int periodic_size; } ;


 int periodic_usecs (struct ehci_hcd*,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_period (
 struct ehci_hcd *ehci,
 unsigned frame,
 unsigned uframe,
 unsigned period,
 unsigned usecs
) {
 int claimed;




 if (uframe >= 8)
  return 0;





 usecs = 100 - usecs;




 if (unlikely (period == 0)) {
  do {
   for (uframe = 0; uframe < 7; uframe++) {
    claimed = periodic_usecs (ehci, frame, uframe);
    if (claimed > usecs)
     return 0;
   }
  } while ((frame += 1) < ehci->periodic_size);


 } else {
  do {
   claimed = periodic_usecs (ehci, frame, uframe);
   if (claimed > usecs)
    return 0;
  } while ((frame += period) < ehci->periodic_size);
 }


 return 1;
}
