
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int PCI_BASE ;
 int outl (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void pnx8550_start_hc(struct platform_device *dev)
{



 outl(0x00000003, PCI_BASE | 0x0004770c);




 outl(0x00000003, PCI_BASE | 0x00047710);

 udelay(100);
}
