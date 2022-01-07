
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_ep {int dummy; } ;


 int UDCCSR ;
 int UDCCSR0_ACM ;
 scalar_t__ is_ep0 (struct pxa_ep*) ;
 int udc_ep_writel (struct pxa_ep*,int ,int) ;

__attribute__((used)) static inline void ep_write_UDCCSR(struct pxa_ep *ep, int mask)
{
 if (is_ep0(ep))
  mask |= UDCCSR0_ACM;
 udc_ep_writel(ep, UDCCSR, mask);
}
