
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq; scalar_t__ dma1; scalar_t__ dma2; int * res_port2; int * res_port1; } ;
struct snd_gus_card {TYPE_1__ gf1; int equal_dma; } ;


 int disable_dma (scalar_t__) ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,void*) ;
 int kfree (struct snd_gus_card*) ;
 int release_and_free_resource (int *) ;
 int snd_gf1_stop (struct snd_gus_card*) ;
 int snd_gus_init_dma_irq (struct snd_gus_card*,int ) ;

__attribute__((used)) static int snd_gus_free(struct snd_gus_card *gus)
{
 if (gus->gf1.res_port2 == ((void*)0))
  goto __hw_end;
 snd_gf1_stop(gus);
 snd_gus_init_dma_irq(gus, 0);
      __hw_end:
 release_and_free_resource(gus->gf1.res_port1);
 release_and_free_resource(gus->gf1.res_port2);
 if (gus->gf1.irq >= 0)
  free_irq(gus->gf1.irq, (void *) gus);
 if (gus->gf1.dma1 >= 0) {
  disable_dma(gus->gf1.dma1);
  free_dma(gus->gf1.dma1);
 }
 if (!gus->equal_dma && gus->gf1.dma2 >= 0) {
  disable_dma(gus->gf1.dma2);
  free_dma(gus->gf1.dma2);
 }
 kfree(gus);
 return 0;
}
