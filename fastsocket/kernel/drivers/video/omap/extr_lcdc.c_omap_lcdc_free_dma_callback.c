
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dma_callback; } ;


 TYPE_1__ lcdc ;

void omap_lcdc_free_dma_callback(void)
{
 lcdc.dma_callback = ((void*)0);
}
