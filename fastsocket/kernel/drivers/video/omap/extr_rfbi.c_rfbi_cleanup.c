
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;


 int DISPC_IRQ_FRAMEMASK ;
 int iounmap (int ) ;
 int omap_dispc_free_irq (int ,int ,int *) ;
 TYPE_1__ rfbi ;
 int rfbi_dma_callback ;
 int rfbi_put_clocks () ;

__attribute__((used)) static void rfbi_cleanup(void)
{
 omap_dispc_free_irq(DISPC_IRQ_FRAMEMASK, rfbi_dma_callback, ((void*)0));
 rfbi_put_clocks();
 iounmap(rfbi.base);
}
