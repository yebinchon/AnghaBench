
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_gadget {int dummy; } ;


 int EL2NSYNC ;
 int UDC_SOF ;
 int UDC_TS ;
 int UDC_TS_OK ;
 int omap_readw (int ) ;

__attribute__((used)) static int omap_get_frame(struct usb_gadget *gadget)
{
 u16 sof = omap_readw(UDC_SOF);
 return (sof & UDC_TS_OK) ? (sof & UDC_TS) : -EL2NSYNC;
}
