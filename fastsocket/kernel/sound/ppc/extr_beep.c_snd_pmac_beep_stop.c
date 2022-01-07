
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {struct pmac_beep* beep; } ;
struct pmac_beep {scalar_t__ running; } ;


 int snd_pmac_beep_dma_stop (struct snd_pmac*) ;

void snd_pmac_beep_stop(struct snd_pmac *chip)
{
 struct pmac_beep *beep = chip->beep;
 if (beep && beep->running) {
  beep->running = 0;
  snd_pmac_beep_dma_stop(chip);
 }
}
