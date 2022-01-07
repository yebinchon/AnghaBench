
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_cs46xx {int reg_lock; TYPE_1__* dsp_spos_instance; } ;
struct dsp_pcm_channel_descriptor {int unlinked; TYPE_2__* src_scb; int pcm_reader_scb; int active; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {scalar_t__ npcm_channels; } ;


 int EIO ;
 int _dsp_unlink_scb (struct snd_cs46xx*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cs46xx_dsp_pcm_unlink (struct snd_cs46xx * chip,
      struct dsp_pcm_channel_descriptor * pcm_channel)
{
 unsigned long flags;

 if (snd_BUG_ON(!pcm_channel->active ||
         chip->dsp_spos_instance->npcm_channels <= 0))
  return -EIO;

 spin_lock(&pcm_channel->src_scb->lock);

 if (pcm_channel->unlinked) {
  spin_unlock(&pcm_channel->src_scb->lock);
  return -EIO;
 }

 spin_lock_irqsave(&chip->reg_lock, flags);
 pcm_channel->unlinked = 1;
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 _dsp_unlink_scb (chip,pcm_channel->pcm_reader_scb);

 spin_unlock(&pcm_channel->src_scb->lock);
 return 0;
}
