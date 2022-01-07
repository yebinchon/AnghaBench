
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {scalar_t__ irq; int hwshare; scalar_t__ dma1; scalar_t__ dma2; scalar_t__ timer; int card; int res_cport; int res_port; } ;


 int WSS_HWSHARE_DMA1 ;
 int WSS_HWSHARE_DMA2 ;
 int WSS_HWSHARE_IRQ ;
 int disable_irq (scalar_t__) ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,void*) ;
 int kfree (struct snd_wss*) ;
 int release_and_free_resource (int ) ;
 int snd_device_free (int ,scalar_t__) ;
 int snd_dma_disable (scalar_t__) ;

int snd_wss_free(struct snd_wss *chip)
{
 release_and_free_resource(chip->res_port);
 release_and_free_resource(chip->res_cport);
 if (chip->irq >= 0) {
  disable_irq(chip->irq);
  if (!(chip->hwshare & WSS_HWSHARE_IRQ))
   free_irq(chip->irq, (void *) chip);
 }
 if (!(chip->hwshare & WSS_HWSHARE_DMA1) && chip->dma1 >= 0) {
  snd_dma_disable(chip->dma1);
  free_dma(chip->dma1);
 }
 if (!(chip->hwshare & WSS_HWSHARE_DMA2) &&
     chip->dma2 >= 0 && chip->dma2 != chip->dma1) {
  snd_dma_disable(chip->dma2);
  free_dma(chip->dma2);
 }
 if (chip->timer)
  snd_device_free(chip->card, chip->timer);
 kfree(chip);
 return 0;
}
