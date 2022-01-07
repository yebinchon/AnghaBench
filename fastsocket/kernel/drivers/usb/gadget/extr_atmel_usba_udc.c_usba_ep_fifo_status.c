
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_ep {int dummy; } ;
struct usb_ep {int dummy; } ;


 int BYTE_COUNT ;
 int STA ;
 int USBA_BFEXT (int ,int ) ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 int usba_ep_readl (struct usba_ep*,int ) ;

__attribute__((used)) static int usba_ep_fifo_status(struct usb_ep *_ep)
{
 struct usba_ep *ep = to_usba_ep(_ep);

 return USBA_BFEXT(BYTE_COUNT, usba_ep_readl(ep, STA));
}
