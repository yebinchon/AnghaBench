
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ehci_shadow {void* ptr; int * hw_next; } ;
struct oxu_hcd {int * periodic; union ehci_shadow* pshadow; } ;
typedef int __le32 ;


 int Q_NEXT_TYPE (int ) ;
 union ehci_shadow* periodic_next_shadow (union ehci_shadow*,int ) ;

__attribute__((used)) static void periodic_unlink(struct oxu_hcd *oxu, unsigned frame, void *ptr)
{
 union ehci_shadow *prev_p = &oxu->pshadow[frame];
 __le32 *hw_p = &oxu->periodic[frame];
 union ehci_shadow here = *prev_p;


 while (here.ptr && here.ptr != ptr) {
  prev_p = periodic_next_shadow(prev_p, Q_NEXT_TYPE(*hw_p));
  hw_p = here.hw_next;
  here = *prev_p;
 }

 if (!here.ptr)
  return;




 *prev_p = *periodic_next_shadow(&here, Q_NEXT_TYPE(*hw_p));
 *hw_p = *here.hw_next;
}
