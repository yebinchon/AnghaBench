
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {scalar_t__ io_base; int * slots; int dma2; int dma; int irq; } ;


 int ad1848_unload (scalar_t__,int ,int ,int ,int ) ;
 int release_region (scalar_t__,int) ;
 int sound_unload_audiodev (int ) ;

void unload_ms_sound(struct address_info *hw_config)
{
 ad1848_unload(hw_config->io_base + 4,
        hw_config->irq,
        hw_config->dma,
        hw_config->dma2, 0);
 sound_unload_audiodev(hw_config->slots[0]);
 release_region(hw_config->io_base, 4);
}
