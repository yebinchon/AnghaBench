
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohci_hcd {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int HC_STATE_HALT ;
 TYPE_1__* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static inline void disable (struct ohci_hcd *ohci)
{
 ohci_to_hcd(ohci)->state = HC_STATE_HALT;
}
