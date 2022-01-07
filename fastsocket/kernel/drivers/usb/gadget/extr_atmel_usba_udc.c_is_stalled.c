
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int dummy; } ;
struct usba_ep {int dummy; } ;


 int STA ;
 int USBA_FORCE_STALL ;
 int usba_ep_readl (struct usba_ep*,int ) ;

__attribute__((used)) static inline int is_stalled(struct usba_udc *udc, struct usba_ep *ep)
{
 if (usba_ep_readl(ep, STA) & USBA_FORCE_STALL)
  return 1;
 return 0;
}
