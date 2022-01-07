
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {scalar_t__ irq; scalar_t__ dma8; scalar_t__ dma16; scalar_t__ res_port; } ;


 int disable_dma (scalar_t__) ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,void*) ;
 int kfree (struct snd_sb*) ;
 int release_and_free_resource (scalar_t__) ;

__attribute__((used)) static int snd_sbdsp_free(struct snd_sb *chip)
{
 if (chip->res_port)
  release_and_free_resource(chip->res_port);
 if (chip->irq >= 0)
  free_irq(chip->irq, (void *) chip);
 kfree(chip);
 return 0;
}
