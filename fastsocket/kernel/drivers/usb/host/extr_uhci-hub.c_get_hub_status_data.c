
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int rh_numports; int port_c_suspend; scalar_t__ io_addr; } ;


 int RWC_BITS ;
 scalar_t__ USBPORTSC1 ;
 int USBPORTSC_OCC ;
 scalar_t__ ignore_oc ;
 int inw (scalar_t__) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static inline int get_hub_status_data(struct uhci_hcd *uhci, char *buf)
{
 int port;
 int mask = RWC_BITS;







 if (ignore_oc)
  mask &= ~USBPORTSC_OCC;

 *buf = 0;
 for (port = 0; port < uhci->rh_numports; ++port) {
  if ((inw(uhci->io_addr + USBPORTSC1 + port * 2) & mask) ||
    test_bit(port, &uhci->port_c_suspend))
   *buf |= (1 << (port + 1));
 }
 return !!*buf;
}
