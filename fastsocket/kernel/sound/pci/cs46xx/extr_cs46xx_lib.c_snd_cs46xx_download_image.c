
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_cs46xx {int dummy; } ;
struct TYPE_4__ {TYPE_1__* memory; int * map; } ;
struct TYPE_3__ {int size; int offset; } ;


 TYPE_2__ BA1Struct ;
 int BA1_MEMORY_COUNT ;
 int snd_cs46xx_download (struct snd_cs46xx*,int *,int ,int) ;

int snd_cs46xx_download_image(struct snd_cs46xx *chip)
{
 int idx, err;
 unsigned long offset = 0;

 for (idx = 0; idx < BA1_MEMORY_COUNT; idx++) {
  if ((err = snd_cs46xx_download(chip,
            &BA1Struct.map[offset],
            BA1Struct.memory[idx].offset,
            BA1Struct.memory[idx].size)) < 0)
   return err;
  offset += BA1Struct.memory[idx].size >> 2;
 }
 return 0;
}
