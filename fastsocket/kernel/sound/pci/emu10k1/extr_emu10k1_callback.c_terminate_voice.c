
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_voice {scalar_t__ block; int ch; struct snd_emu10k1* hw; } ;
struct snd_emu10k1_memblk {scalar_t__ map_locked; } ;
struct snd_emu10k1 {int dummy; } ;


 int DCYSUSV ;
 int DCYSUSV_CHANNELENABLE_MASK ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,int) ;

__attribute__((used)) static void
terminate_voice(struct snd_emux_voice *vp)
{
 struct snd_emu10k1 *hw;

 if (snd_BUG_ON(!vp))
  return;
 hw = vp->hw;
 snd_emu10k1_ptr_write(hw, DCYSUSV, vp->ch, 0x807f | DCYSUSV_CHANNELENABLE_MASK);
 if (vp->block) {
  struct snd_emu10k1_memblk *emem;
  emem = (struct snd_emu10k1_memblk *)vp->block;
  if (emem->map_locked > 0)
   emem->map_locked--;
 }
}
