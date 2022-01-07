
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dma16; scalar_t__ dma8; int bits; scalar_t__ model; int channels; int tconst; scalar_t__ trigger_bits; int lock; } ;
typedef TYPE_3__ sb_devc ;
struct TYPE_12__ {TYPE_2__* dmap_in; TYPE_1__* dmap_out; TYPE_3__* devc; } ;
struct TYPE_10__ {scalar_t__ dma; } ;
struct TYPE_9__ {scalar_t__ dma; } ;


 int AFMT_S16_LE ;
 int DSP_CMD_SPKON ;
 scalar_t__ MDL_JAZZ ;
 scalar_t__ MDL_SBPRO ;
 scalar_t__ MDL_SMW ;
 TYPE_8__** audio_devs ;
 scalar_t__ sb_dsp_command (TYPE_3__*,int) ;
 unsigned char sb_getmixer (TYPE_3__*,int) ;
 int sb_mixer_set_stereo (TYPE_3__*,int) ;
 int sb_setmixer (TYPE_3__*,int,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sbpro_audio_prepare_for_output(int dev, int bsize, int bcount)
{
 sb_devc *devc = audio_devs[dev]->devc;
 unsigned long flags;
 unsigned char tmp;
 unsigned char bits = 0;

 if (devc->dma16 >= 0 && devc->dma16 != devc->dma8)
  audio_devs[dev]->dmap_out->dma = audio_devs[dev]->dmap_in->dma = devc->bits == 16 ? devc->dma16 : devc->dma8;
 if (devc->model == MDL_SBPRO)
  sb_mixer_set_stereo(devc, devc->channels == 2);

 spin_lock_irqsave(&devc->lock, flags);
 if (sb_dsp_command(devc, 0x40))
  sb_dsp_command(devc, devc->tconst);
 sb_dsp_command(devc, DSP_CMD_SPKON);

 if (devc->model == MDL_JAZZ || devc->model == MDL_SMW)
 {
  if (devc->bits == AFMT_S16_LE)
   bits = 0x04;

  if (devc->channels == 1)
   sb_dsp_command(devc, 0xa0 | bits);
  else
   sb_dsp_command(devc, 0xa8 | bits);
  spin_unlock_irqrestore(&devc->lock, flags);
 }
 else
 {
  spin_unlock_irqrestore(&devc->lock, flags);
  tmp = sb_getmixer(devc, 0x0e);
  if (devc->channels == 1)
   tmp &= ~0x02;
  else
   tmp |= 0x02;
  sb_setmixer(devc, 0x0e, tmp);
 }
 devc->trigger_bits = 0;
 return 0;
}
