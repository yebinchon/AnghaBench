
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_pcm_runtime {int rate; int sleep; } ;
struct ak4117 {unsigned char rcs0; int rcs1; unsigned char rcs2; TYPE_2__* substream; int (* change_callback ) (struct ak4117*,unsigned char,unsigned char) ;TYPE_1__** kctls; int card; int lock; int qcrc_errors; int ccrc_errors; int v_bit_errors; int parity_errors; } ;
struct TYPE_7__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int id; } ;


 unsigned char AK4117_AUDION ;
 unsigned char AK4117_AUTO ;
 unsigned char AK4117_CCRC ;
 unsigned int AK4117_CHECK_NO_RATE ;
 unsigned int AK4117_CHECK_NO_STAT ;
 unsigned char AK4117_CINT ;
 int AK4117_DTSCD ;
 int AK4117_NPCM ;
 unsigned char AK4117_PAR ;
 int AK4117_PEM ;
 unsigned char AK4117_QCRC ;
 unsigned char AK4117_QINT ;
 int AK4117_REG_RCS0 ;
 int AK4117_REG_RCS1 ;
 int AK4117_REG_RCS2 ;
 unsigned char AK4117_STC ;
 unsigned char AK4117_UNLCK ;
 unsigned char AK4117_V ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SNDRV_PCM_STATE_DRAINING ;
 int external_rate (unsigned char) ;
 unsigned char reg_read (struct ak4117*,int ) ;
 int snd_ctl_notify (int ,int ,int *) ;
 scalar_t__ snd_pcm_running (TYPE_2__*) ;
 int snd_pcm_stop (TYPE_2__*,int ) ;
 int snd_pcm_stream_lock_irqsave (TYPE_2__*,unsigned long) ;
 int snd_pcm_stream_unlock_irqrestore (TYPE_2__*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ak4117*,unsigned char,unsigned char) ;
 int wake_up (int *) ;

int snd_ak4117_check_rate_and_errors(struct ak4117 *ak4117, unsigned int flags)
{
 struct snd_pcm_runtime *runtime = ak4117->substream ? ak4117->substream->runtime : ((void*)0);
 unsigned long _flags;
 int res = 0;
 unsigned char rcs0, rcs1, rcs2;
 unsigned char c0, c1;

 rcs1 = reg_read(ak4117, AK4117_REG_RCS1);
 if (flags & AK4117_CHECK_NO_STAT)
  goto __rate;
 rcs0 = reg_read(ak4117, AK4117_REG_RCS0);
 rcs2 = reg_read(ak4117, AK4117_REG_RCS2);

 spin_lock_irqsave(&ak4117->lock, _flags);
 if (rcs0 & AK4117_PAR)
  ak4117->parity_errors++;
 if (rcs0 & AK4117_V)
  ak4117->v_bit_errors++;
 if (rcs2 & AK4117_CCRC)
  ak4117->ccrc_errors++;
 if (rcs2 & AK4117_QCRC)
  ak4117->qcrc_errors++;
 c0 = (ak4117->rcs0 & (AK4117_QINT | AK4117_CINT | AK4117_STC | AK4117_AUDION | AK4117_AUTO | AK4117_UNLCK)) ^
                     (rcs0 & (AK4117_QINT | AK4117_CINT | AK4117_STC | AK4117_AUDION | AK4117_AUTO | AK4117_UNLCK));
 c1 = (ak4117->rcs1 & (AK4117_DTSCD | AK4117_NPCM | AK4117_PEM | 0x0f)) ^
              (rcs1 & (AK4117_DTSCD | AK4117_NPCM | AK4117_PEM | 0x0f));
 ak4117->rcs0 = rcs0 & ~(AK4117_QINT | AK4117_CINT | AK4117_STC);
 ak4117->rcs1 = rcs1;
 ak4117->rcs2 = rcs2;
 spin_unlock_irqrestore(&ak4117->lock, _flags);

 if (rcs0 & AK4117_PAR)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[0]->id);
 if (rcs0 & AK4117_V)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[1]->id);
 if (rcs2 & AK4117_CCRC)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[2]->id);
 if (rcs2 & AK4117_QCRC)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[3]->id);


 if (c1 & 0x0f)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[4]->id);

 if ((c1 & AK4117_PEM) | (c0 & AK4117_CINT))
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[6]->id);
 if (c0 & AK4117_QINT)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[8]->id);

 if (c0 & AK4117_AUDION)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[9]->id);
 if (c1 & AK4117_NPCM)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[10]->id);
 if (c1 & AK4117_DTSCD)
  snd_ctl_notify(ak4117->card, SNDRV_CTL_EVENT_MASK_VALUE, &ak4117->kctls[11]->id);

 if (ak4117->change_callback && (c0 | c1) != 0)
  ak4117->change_callback(ak4117, c0, c1);

      __rate:

 res = external_rate(rcs1);
 if (!(flags & AK4117_CHECK_NO_RATE) && runtime && runtime->rate != res) {
  snd_pcm_stream_lock_irqsave(ak4117->substream, _flags);
  if (snd_pcm_running(ak4117->substream)) {

   snd_pcm_stop(ak4117->substream, SNDRV_PCM_STATE_DRAINING);
   wake_up(&runtime->sleep);
   res = 1;
  }
  snd_pcm_stream_unlock_irqrestore(ak4117->substream, _flags);
 }
 return res;
}
