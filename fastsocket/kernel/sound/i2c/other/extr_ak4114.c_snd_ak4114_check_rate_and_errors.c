
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_runtime {int rate; } ;
struct ak4114 {unsigned char rcs0; int rcs1; TYPE_1__* capture_substream; int (* change_callback ) (struct ak4114*,unsigned char,unsigned char) ;int lock; int qcrc_errors; int ccrc_errors; int v_bit_errors; int parity_errors; } ;
struct TYPE_5__ {struct snd_pcm_runtime* runtime; } ;


 unsigned char AK4114_AUDION ;
 unsigned char AK4114_AUTO ;
 unsigned char AK4114_CCRC ;
 unsigned int AK4114_CHECK_NO_RATE ;
 unsigned int AK4114_CHECK_NO_STAT ;
 unsigned char AK4114_CINT ;
 unsigned char AK4114_PAR ;
 unsigned char AK4114_PEM ;
 unsigned char AK4114_QCRC ;
 unsigned char AK4114_QINT ;
 int AK4114_REG_RCS0 ;
 int AK4114_REG_RCS1 ;
 unsigned char AK4114_UNLCK ;
 unsigned char AK4114_V ;
 int SNDRV_PCM_STATE_DRAINING ;
 int ak4114_notify (struct ak4114*,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int external_rate (unsigned char) ;
 unsigned char reg_read (struct ak4114*,int ) ;
 scalar_t__ snd_pcm_running (TYPE_1__*) ;
 int snd_pcm_stop (TYPE_1__*,int ) ;
 int snd_pcm_stream_lock_irqsave (TYPE_1__*,unsigned long) ;
 int snd_pcm_stream_unlock_irqrestore (TYPE_1__*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ak4114*,unsigned char,unsigned char) ;

int snd_ak4114_check_rate_and_errors(struct ak4114 *ak4114, unsigned int flags)
{
 struct snd_pcm_runtime *runtime = ak4114->capture_substream ? ak4114->capture_substream->runtime : ((void*)0);
 unsigned long _flags;
 int res = 0;
 unsigned char rcs0, rcs1;
 unsigned char c0, c1;

 rcs1 = reg_read(ak4114, AK4114_REG_RCS1);
 if (flags & AK4114_CHECK_NO_STAT)
  goto __rate;
 rcs0 = reg_read(ak4114, AK4114_REG_RCS0);
 spin_lock_irqsave(&ak4114->lock, _flags);
 if (rcs0 & AK4114_PAR)
  ak4114->parity_errors++;
 if (rcs1 & AK4114_V)
  ak4114->v_bit_errors++;
 if (rcs1 & AK4114_CCRC)
  ak4114->ccrc_errors++;
 if (rcs1 & AK4114_QCRC)
  ak4114->qcrc_errors++;
 c0 = (ak4114->rcs0 & (AK4114_QINT | AK4114_CINT | AK4114_PEM | AK4114_AUDION | AK4114_AUTO | AK4114_UNLCK)) ^
                     (rcs0 & (AK4114_QINT | AK4114_CINT | AK4114_PEM | AK4114_AUDION | AK4114_AUTO | AK4114_UNLCK));
 c1 = (ak4114->rcs1 & 0xf0) ^ (rcs1 & 0xf0);
 ak4114->rcs0 = rcs0 & ~(AK4114_QINT | AK4114_CINT);
 ak4114->rcs1 = rcs1;
 spin_unlock_irqrestore(&ak4114->lock, _flags);

 ak4114_notify(ak4114, rcs0, rcs1, c0, c1);
 if (ak4114->change_callback && (c0 | c1) != 0)
  ak4114->change_callback(ak4114, c0, c1);

      __rate:

 res = external_rate(rcs1);
 if (!(flags & AK4114_CHECK_NO_RATE) && runtime && runtime->rate != res) {
  snd_pcm_stream_lock_irqsave(ak4114->capture_substream, _flags);
  if (snd_pcm_running(ak4114->capture_substream)) {

   snd_pcm_stop(ak4114->capture_substream, SNDRV_PCM_STATE_DRAINING);
   res = 1;
  }
  snd_pcm_stream_unlock_irqrestore(ak4114->capture_substream, _flags);
 }
 return res;
}
