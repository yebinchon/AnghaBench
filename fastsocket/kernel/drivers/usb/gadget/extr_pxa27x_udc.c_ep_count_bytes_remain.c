
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_ep {scalar_t__ dir_in; } ;


 int EOPNOTSUPP ;
 int UDCBCR ;
 int udc_ep_readl (struct pxa_ep*,int ) ;

__attribute__((used)) static int ep_count_bytes_remain(struct pxa_ep *ep)
{
 if (ep->dir_in)
  return -EOPNOTSUPP;
 return udc_ep_readl(ep, UDCBCR) & 0x3ff;
}
