
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp1362_hcd {int irqenb; scalar_t__ irq_active; } ;


 int HCuPINT ;
 int HCuPINTENB ;
 int isp1362_write_reg16 (struct isp1362_hcd*,int ,int) ;

__attribute__((used)) static inline void isp1362_enable_int(struct isp1362_hcd *isp1362_hcd, u16 mask)
{
 if ((isp1362_hcd->irqenb | mask) == isp1362_hcd->irqenb)
  return;
 if (mask & ~isp1362_hcd->irqenb)
  isp1362_write_reg16(isp1362_hcd, HCuPINT, mask & ~isp1362_hcd->irqenb);
 isp1362_hcd->irqenb |= mask;
 if (isp1362_hcd->irq_active)
  return;
 isp1362_write_reg16(isp1362_hcd, HCuPINTENB, isp1362_hcd->irqenb);
}
