
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esschan {int* apu; int* apu_mode; unsigned int* base; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct es1968 {TYPE_1__ dma; } ;


 int apu_set_register (struct es1968*,int,int,int) ;
 int snd_es1968_program_wavecache (struct es1968*,struct esschan*,int,unsigned int,int) ;

__attribute__((used)) static void init_capture_apu(struct es1968 *chip, struct esschan *es, int channel,
        unsigned int pa, unsigned int bsize,
        int mode, int route)
{
 int i, apu = es->apu[channel];

 es->apu_mode[channel] = mode;


 snd_es1968_program_wavecache(chip, es, channel, pa, 1);


 pa -= chip->dma.addr;
 pa >>= 1;



 es->base[channel] = pa & 0xFFFF;
 pa |= 0x00400000;


 for (i = 0; i < 16; i++)
  apu_set_register(chip, apu, i, 0x0000);



 apu_set_register(chip, apu, 2, 0x8);


 apu_set_register(chip, apu, 4, ((pa >> 16) & 0xFF) << 8);
 apu_set_register(chip, apu, 5, pa & 0xFFFF);
 apu_set_register(chip, apu, 6, (pa + bsize) & 0xFFFF);
 apu_set_register(chip, apu, 7, bsize);

 apu_set_register(chip, apu, 8, 0x00F0);

 apu_set_register(chip, apu, 9, 0x0000);

 apu_set_register(chip, apu, 10, 0x8F08);

 apu_set_register(chip, apu, 11, route);

 apu_set_register(chip, apu, 0, 0x400F);
}
