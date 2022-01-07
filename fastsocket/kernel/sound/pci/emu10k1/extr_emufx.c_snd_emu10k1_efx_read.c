
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {scalar_t__ audigy; } ;


 scalar_t__ A_MICROCODEBASE ;
 scalar_t__ MICROCODEBASE ;
 unsigned int snd_emu10k1_ptr_read (struct snd_emu10k1*,unsigned int,int ) ;

unsigned int snd_emu10k1_efx_read(struct snd_emu10k1 *emu, unsigned int pc)
{
 pc += emu->audigy ? A_MICROCODEBASE : MICROCODEBASE;
 return snd_emu10k1_ptr_read(emu, pc, 0);
}
