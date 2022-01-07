
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_emu10k1_fx8010_code {int * tram_addr_map; int * tram_data_map; int tram_valid; } ;
struct snd_emu10k1 {scalar_t__ audigy; } ;


 scalar_t__ A_TANKMEMCTLREGBASE ;
 int EFAULT ;
 scalar_t__ TANKMEMADDRREGBASE ;
 scalar_t__ TANKMEMDATAREGBASE ;
 scalar_t__ get_user (int,int *) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,scalar_t__,int ,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int snd_emu10k1_tram_poke(struct snd_emu10k1 *emu,
     struct snd_emu10k1_fx8010_code *icode)
{
 int tram;
 u32 addr, val;

 for (tram = 0; tram < (emu->audigy ? 0x100 : 0xa0); tram++) {
  if (!test_bit(tram, icode->tram_valid))
   continue;
  if (get_user(val, &icode->tram_data_map[tram]) ||
      get_user(addr, &icode->tram_addr_map[tram]))
   return -EFAULT;
  snd_emu10k1_ptr_write(emu, TANKMEMDATAREGBASE + tram, 0, val);
  if (!emu->audigy) {
   snd_emu10k1_ptr_write(emu, TANKMEMADDRREGBASE + tram, 0, addr);
  } else {
   snd_emu10k1_ptr_write(emu, TANKMEMADDRREGBASE + tram, 0, addr << 12);
   snd_emu10k1_ptr_write(emu, A_TANKMEMCTLREGBASE + tram, 0, addr >> 20);
  }
 }
 return 0;
}
