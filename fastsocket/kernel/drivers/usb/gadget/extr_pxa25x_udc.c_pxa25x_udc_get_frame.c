
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int UFNRH ;
 int UFNRL ;

__attribute__((used)) static int pxa25x_udc_get_frame(struct usb_gadget *_gadget)
{
 return ((UFNRH & 0x07) << 8) | (UFNRL & 0xff);
}
