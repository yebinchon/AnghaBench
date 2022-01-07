
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_emu10k1_fx8010_code {int * gpr_map; int gpr_valid; } ;
struct snd_emu10k1 {scalar_t__ gpr_base; scalar_t__ audigy; } ;


 int EFAULT ;
 scalar_t__ put_user (int ,int *) ;
 int set_bit (int,int ) ;
 int snd_emu10k1_ptr_read (struct snd_emu10k1*,scalar_t__,int ) ;

__attribute__((used)) static int snd_emu10k1_gpr_peek(struct snd_emu10k1 *emu,
    struct snd_emu10k1_fx8010_code *icode)
{
 int gpr;
 u32 val;

 for (gpr = 0; gpr < (emu->audigy ? 0x200 : 0x100); gpr++) {
  set_bit(gpr, icode->gpr_valid);
  val = snd_emu10k1_ptr_read(emu, emu->gpr_base + gpr, 0);
  if (put_user(val, &icode->gpr_map[gpr]))
   return -EFAULT;
 }
 return 0;
}
