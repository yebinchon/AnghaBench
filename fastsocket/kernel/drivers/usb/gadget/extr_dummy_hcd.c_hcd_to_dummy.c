
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct dummy {int dummy; } ;



__attribute__((used)) static inline struct dummy *hcd_to_dummy (struct usb_hcd *hcd)
{
 return (struct dummy *) (hcd->hcd_priv);
}
