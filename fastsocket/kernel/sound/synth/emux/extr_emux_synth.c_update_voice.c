
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {int * port; int * chan; int state; } ;
struct TYPE_2__ {int (* update ) (struct snd_emux_voice*,int) ;} ;
struct snd_emux {TYPE_1__ ops; } ;


 int SNDRV_EMUX_UPDATE_PAN ;
 int SNDRV_EMUX_UPDATE_PITCH ;
 int SNDRV_EMUX_UPDATE_VOLUME ;
 int STATE_IS_PLAYING (int ) ;
 int calc_pan (struct snd_emux_voice*) ;
 int calc_pitch (struct snd_emux_voice*) ;
 int calc_volume (struct snd_emux_voice*) ;
 int stub1 (struct snd_emux_voice*,int) ;

__attribute__((used)) static void
update_voice(struct snd_emux *emu, struct snd_emux_voice *vp, int update)
{
 if (!STATE_IS_PLAYING(vp->state))
  return;

 if (vp->chan == ((void*)0) || vp->port == ((void*)0))
  return;
 if (update & SNDRV_EMUX_UPDATE_VOLUME)
  calc_volume(vp);
 if (update & SNDRV_EMUX_UPDATE_PITCH)
  calc_pitch(vp);
 if (update & SNDRV_EMUX_UPDATE_PAN) {
  if (! calc_pan(vp) && (update == SNDRV_EMUX_UPDATE_PAN))
   return;
 }
 emu->ops.update(vp, update);
}
