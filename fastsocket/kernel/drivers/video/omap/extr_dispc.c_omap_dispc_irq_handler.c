
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_6__ {TYPE_2__* irq_handlers; TYPE_1__* fbdev; int frame_done; } ;
struct TYPE_5__ {int irq_mask; int data; int (* callback ) (int ) ;} ;
struct TYPE_4__ {int dev; } ;


 int DISPC_IRQSTATUS ;
 int DISPC_IRQ_FRAMEMASK ;
 int DISPC_IRQ_MASK_ERROR ;
 int IRQ_HANDLED ;
 int MAX_IRQ_HANDLERS ;
 int complete (int *) ;
 int dev_err (int ,char*,int) ;
 TYPE_3__ dispc ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int) ;
 int enable_lcd_clocks (int) ;
 scalar_t__ printk_ratelimit () ;
 int stub1 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t omap_dispc_irq_handler(int irq, void *dev)
{
 u32 stat;
 int i = 0;

 enable_lcd_clocks(1);

 stat = dispc_read_reg(DISPC_IRQSTATUS);
 if (stat & DISPC_IRQ_FRAMEMASK)
  complete(&dispc.frame_done);

 if (stat & DISPC_IRQ_MASK_ERROR) {
  if (printk_ratelimit()) {
   dev_err(dispc.fbdev->dev, "irq error status %04x\n",
    stat & 0x7fff);
  }
 }

 for (i = 0; i < MAX_IRQ_HANDLERS; i++) {
  if (unlikely(dispc.irq_handlers[i].callback &&
        (stat & dispc.irq_handlers[i].irq_mask)))
   dispc.irq_handlers[i].callback(
      dispc.irq_handlers[i].data);
 }

 dispc_write_reg(DISPC_IRQSTATUS, stat);

 enable_lcd_clocks(0);

 return IRQ_HANDLED;
}
