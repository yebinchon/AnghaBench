
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_voice {int ch; scalar_t__ avol; scalar_t__ acutoff; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_IFATN_WRITE (struct snd_emu8000*,int ,int) ;

__attribute__((used)) static void
set_volume(struct snd_emu8000 *hw, struct snd_emux_voice *vp)
{
 int ifatn;

 ifatn = (unsigned char)vp->acutoff;
 ifatn = (ifatn << 8);
 ifatn |= (unsigned char)vp->avol;
 EMU8000_IFATN_WRITE(hw, vp->ch, ifatn);
}
