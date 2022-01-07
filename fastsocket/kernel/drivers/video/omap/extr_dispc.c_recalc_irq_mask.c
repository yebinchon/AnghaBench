
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* irq_handlers; } ;
struct TYPE_3__ {unsigned long irq_mask; int callback; } ;


 int DISPC_IRQENABLE ;
 unsigned long DISPC_IRQ_MASK_ERROR ;
 int MAX_IRQ_HANDLERS ;
 int MOD_REG_FLD (int ,int,unsigned long) ;
 TYPE_2__ dispc ;
 int enable_lcd_clocks (int) ;

__attribute__((used)) static void recalc_irq_mask(void)
{
 int i;
 unsigned long irq_mask = DISPC_IRQ_MASK_ERROR;

 for (i = 0; i < MAX_IRQ_HANDLERS; i++) {
  if (!dispc.irq_handlers[i].callback)
   continue;

  irq_mask |= dispc.irq_handlers[i].irq_mask;
 }

 enable_lcd_clocks(1);
 MOD_REG_FLD(DISPC_IRQENABLE, 0x7fff, irq_mask);
 enable_lcd_clocks(0);
}
