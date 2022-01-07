
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct oxu_hcd {int periodic_size; TYPE_1__* regs; } ;
struct TYPE_2__ {int frame_index; } ;


 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int readl (int *) ;

__attribute__((used)) static int oxu_get_frame(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);

 return (readl(&oxu->regs->frame_index) >> 3) %
  oxu->periodic_size;
}
