
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxaohci_platform_data {int (* exit ) (struct device*) ;} ;
struct pxa27x_ohci {int clk; scalar_t__ mmio_base; } ;
struct device {struct pxaohci_platform_data* platform_data; } ;


 scalar_t__ UHCCOMS ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int clk_disable (int ) ;
 int pxa27x_reset_hc (struct pxa27x_ohci*) ;
 int stub1 (struct device*) ;
 int udelay (int) ;

__attribute__((used)) static void pxa27x_stop_hc(struct pxa27x_ohci *ohci, struct device *dev)
{
 struct pxaohci_platform_data *inf;
 uint32_t uhccoms;

 inf = dev->platform_data;

 if (inf->exit)
  inf->exit(dev);

 pxa27x_reset_hc(ohci);


 uhccoms = __raw_readl(ohci->mmio_base + UHCCOMS) | 0x01;
 __raw_writel(uhccoms, ohci->mmio_base + UHCCOMS);
 udelay(10);

 clk_disable(ohci->clk);
}
