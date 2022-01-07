
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int dummy; } ;
struct usba_ep {int index; struct usba_udc* udc; } ;
struct usb_ep {int dummy; } ;


 int EPT_RST ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 int usba_writel (struct usba_udc*,int ,int) ;

__attribute__((used)) static void usba_ep_fifo_flush(struct usb_ep *_ep)
{
 struct usba_ep *ep = to_usba_ep(_ep);
 struct usba_udc *udc = ep->udc;

 usba_writel(udc, EPT_RST, 1 << ep->index);
}
