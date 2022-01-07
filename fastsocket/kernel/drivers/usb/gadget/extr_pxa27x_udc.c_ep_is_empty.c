
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_ep {scalar_t__ dir_in; } ;


 int EOPNOTSUPP ;
 int UDCCSR ;
 int UDCCSR0_RNE ;
 int UDCCSR_BNE ;
 scalar_t__ is_ep0 (struct pxa_ep*) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;

__attribute__((used)) static int ep_is_empty(struct pxa_ep *ep)
{
 int ret;

 if (!is_ep0(ep) && ep->dir_in)
  return -EOPNOTSUPP;
 if (is_ep0(ep))
  ret = !(udc_ep_readl(ep, UDCCSR) & UDCCSR0_RNE);
 else
  ret = !(udc_ep_readl(ep, UDCCSR) & UDCCSR_BNE);
 return ret;
}
