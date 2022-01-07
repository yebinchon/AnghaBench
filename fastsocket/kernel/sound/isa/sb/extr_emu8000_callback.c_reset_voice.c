
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int,int) ;
 int snd_emu8000_tweak_voice (struct snd_emu8000*,int) ;

__attribute__((used)) static void
reset_voice(struct snd_emux *emu, int ch)
{
 struct snd_emu8000 *hw;

 hw = emu->hw;
 EMU8000_DCYSUSV_WRITE(hw, ch, 0x807F);
 snd_emu8000_tweak_voice(hw, ch);
}
