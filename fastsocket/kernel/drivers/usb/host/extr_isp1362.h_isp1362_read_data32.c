
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp1362_hcd {int data_reg; } ;


 int DUMMY_DELAY_ACCESS ;
 int _BUG_ON (int) ;
 int irqs_disabled () ;
 int readl (int ) ;
 scalar_t__ readw (int ) ;

__attribute__((used)) static u32 isp1362_read_data32(struct isp1362_hcd *isp1362_hcd)
{
 u32 val;

 _BUG_ON(!irqs_disabled());




 DUMMY_DELAY_ACCESS;
 val = (u32)readw(isp1362_hcd->data_reg);
 DUMMY_DELAY_ACCESS;
 val |= (u32)readw(isp1362_hcd->data_reg) << 16;

 return val;
}
