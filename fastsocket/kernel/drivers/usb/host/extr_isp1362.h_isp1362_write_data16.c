
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isp1362_hcd {int data_reg; } ;


 int DUMMY_DELAY_ACCESS ;
 int _BUG_ON (int) ;
 int irqs_disabled () ;
 int writew (int ,int ) ;

__attribute__((used)) static void isp1362_write_data16(struct isp1362_hcd *isp1362_hcd, u16 val)
{
 _BUG_ON(!irqs_disabled());
 DUMMY_DELAY_ACCESS;
 writew(val, isp1362_hcd->data_reg);
}
