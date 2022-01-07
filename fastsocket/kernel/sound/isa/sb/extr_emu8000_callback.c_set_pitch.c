
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_voice {int apitch; int ch; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_IP_WRITE (struct snd_emu8000*,int ,int ) ;

__attribute__((used)) static void
set_pitch(struct snd_emu8000 *hw, struct snd_emux_voice *vp)
{
 EMU8000_IP_WRITE(hw, vp->ch, vp->apitch);
}
