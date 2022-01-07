
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_operations {int flags; } ;


 int DMA_ACTIVE ;
 int DMA_CR_E ;
 int IOMD_SD0CR ;
 int PCM_ENABLE_OUTPUT ;
 struct audio_operations** audio_devs ;
 int dma_interrupt ;
 int iomd_writeb (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int vidc_audio_dma_interrupt ;
 int vidc_sound_dma_irq (int ,int *) ;

__attribute__((used)) static void vidc_audio_trigger(int dev, int enable_bits)
{
 struct audio_operations *adev = audio_devs[dev];

 if (enable_bits & PCM_ENABLE_OUTPUT) {
  if (!(adev->flags & DMA_ACTIVE)) {
   unsigned long flags;

   local_irq_save(flags);


   adev->flags |= DMA_ACTIVE;

   dma_interrupt = vidc_audio_dma_interrupt;
   vidc_sound_dma_irq(0, ((void*)0));
   iomd_writeb(DMA_CR_E | 0x10, IOMD_SD0CR);

   local_irq_restore(flags);
  }
 }
}
