
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buffparms {scalar_t__ raw_buf; scalar_t__ raw_buf_phys; } ;
struct TYPE_2__ {struct dma_buffparms* dmap_out; } ;


 TYPE_1__** audio_devs ;
 int dma_count ;
 unsigned long dma_start ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void
vidc_audio_output_block(int dev, unsigned long buf, int total_count, int one)
{
 struct dma_buffparms *dmap = audio_devs[dev]->dmap_out;
 unsigned long flags;

 local_irq_save(flags);
 dma_start = buf - (unsigned long)dmap->raw_buf_phys + (unsigned long)dmap->raw_buf;
 dma_count = total_count;
 local_irq_restore(flags);
}
