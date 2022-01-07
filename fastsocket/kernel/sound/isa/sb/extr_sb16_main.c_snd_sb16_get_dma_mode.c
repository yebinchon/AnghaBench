
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {scalar_t__ dma8; scalar_t__ dma16; int force_mode16; } ;





__attribute__((used)) static int snd_sb16_get_dma_mode(struct snd_sb *chip)
{
 if (chip->dma8 < 0 || chip->dma16 < 0)
  return 0;
 switch (chip->force_mode16) {
 case 128:
  return 1;
 case 129:
  return 2;
 default:
  return 0;
 }
}
