
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * area; } ;
struct snd_bt87x {TYPE_1__ dma_risc; } ;


 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static void snd_bt87x_free_risc(struct snd_bt87x *chip)
{
 if (chip->dma_risc.area) {
  snd_dma_free_pages(&chip->dma_risc);
  chip->dma_risc.area = ((void*)0);
 }
}
