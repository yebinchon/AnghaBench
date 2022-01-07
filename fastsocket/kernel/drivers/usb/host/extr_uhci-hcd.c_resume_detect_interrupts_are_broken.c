
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhci_hcd {int rh_numports; scalar_t__ io_addr; } ;
struct TYPE_2__ {int vendor; } ;




 scalar_t__ USBPORTSC1 ;
 int USBPORTSC_OC ;
 scalar_t__ ignore_oc ;
 int inw (int ) ;
 TYPE_1__* to_pci_dev (int ) ;
 int uhci_dev (struct uhci_hcd*) ;

__attribute__((used)) static int resume_detect_interrupts_are_broken(struct uhci_hcd *uhci)
{
 int port;



 if (ignore_oc)
  return 1;

 switch (to_pci_dev(uhci_dev(uhci))->vendor) {
     default:
  break;

     case 129:



  return 1;

     case 128:







  for (port = 0; port < uhci->rh_numports; ++port) {
   if (inw(uhci->io_addr + USBPORTSC1 + port * 2) &
     USBPORTSC_OC)
    return 1;
  }
  break;
 }
 return 0;
}
