
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_abdac {int substream; } ;


 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void atmel_abdac_dma_period_done(void *arg)
{
 struct atmel_abdac *dac = arg;
 snd_pcm_period_elapsed(dac->substream);
}
