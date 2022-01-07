
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_voice {int ch; struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int ,int) ;

__attribute__((used)) static void
terminate_voice(struct snd_emux_voice *vp)
{
 struct snd_emu8000 *hw;

 hw = vp->hw;
 EMU8000_DCYSUSV_WRITE(hw, vp->ch, 0x807F);
}
