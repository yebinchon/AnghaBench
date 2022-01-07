
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mpu_config {int osp; scalar_t__ opened; scalar_t__ initialized; int irq; scalar_t__ base; } ;
struct address_info {scalar_t__ io_base; scalar_t__ always_detect; int osp; int irq; } ;


 int DDB (int ) ;
 int inb (scalar_t__) ;
 int printk (char*,scalar_t__) ;
 int reset_mpu401 (struct mpu_config*) ;

int probe_mpu401(struct address_info *hw_config, struct resource *ports)
{
 int ok = 0;
 struct mpu_config tmp_devc;

 tmp_devc.base = hw_config->io_base;
 tmp_devc.irq = hw_config->irq;
 tmp_devc.initialized = 0;
 tmp_devc.opened = 0;
 tmp_devc.osp = hw_config->osp;

 if (hw_config->always_detect)
  return 1;

 if (inb(hw_config->io_base + 1) == 0xff)
 {
  DDB(printk("MPU401: Port %x looks dead.\n", hw_config->io_base));
  return 0;
 }
 ok = reset_mpu401(&tmp_devc);

 if (!ok)
 {
  DDB(printk("MPU401: Reset failed on port %x\n", hw_config->io_base));
 }
 return ok;
}
