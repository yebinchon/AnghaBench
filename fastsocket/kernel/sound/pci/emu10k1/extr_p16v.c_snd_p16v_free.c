
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ area; } ;
struct snd_emu10k1 {TYPE_1__ p16v_buffer; } ;


 int snd_dma_free_pages (TYPE_1__*) ;

int snd_p16v_free(struct snd_emu10k1 *chip)
{

 if (chip->p16v_buffer.area) {
  snd_dma_free_pages(&chip->p16v_buffer);




 }
 return 0;
}
