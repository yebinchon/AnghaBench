
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {scalar_t__ audigy; } ;


 scalar_t__ A_MICROCODEBASE ;
 scalar_t__ MICROCODEBASE ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,unsigned int,int ,unsigned int) ;

__attribute__((used)) static void snd_emu10k1_efx_write(struct snd_emu10k1 *emu, unsigned int pc, unsigned int data)
{
 pc += emu->audigy ? A_MICROCODEBASE : MICROCODEBASE;
 snd_emu10k1_ptr_write(emu, pc, 0, data);
}
