
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int hcd_to_ohci (struct usb_hcd*) ;
 int ohci_init (int ) ;

__attribute__((used)) static int ohci_sm501_init(struct usb_hcd *hcd)
{
 return ohci_init(hcd_to_ohci(hcd));
}
