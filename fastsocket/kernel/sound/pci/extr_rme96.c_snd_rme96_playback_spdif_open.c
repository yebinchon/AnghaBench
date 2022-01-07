
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int rate_min; int rate_max; int rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct rme96 {int wcreg; TYPE_2__* spdif_ctl; int card; int wcreg_spdif; int wcreg_spdif_stream; int lock; struct snd_pcm_substream* playback_substream; scalar_t__ iobase; } ;
struct TYPE_5__ {int id; TYPE_1__* vd; } ;
struct TYPE_4__ {int access; } ;


 int EBUSY ;
 scalar_t__ RME96_INPUT_ANALOG ;
 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_WCR_ADAT ;
 int RME96_WCR_MASTER ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int rme96_set_buffer_size_constraint (struct rme96*,struct snd_pcm_runtime*) ;
 int snd_ctl_notify (int ,int,int *) ;
 int snd_pcm_rate_to_rate_bit (int) ;
 struct rme96* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme96_capture_getrate (struct rme96*,int*) ;
 scalar_t__ snd_rme96_getinputtype (struct rme96*) ;
 TYPE_3__ snd_rme96_playback_spdif_info ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_playback_spdif_open(struct snd_pcm_substream *substream)
{
        int rate, dummy;
 struct rme96 *rme96 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 spin_lock_irq(&rme96->lock);
        if (rme96->playback_substream != ((void*)0)) {
  spin_unlock_irq(&rme96->lock);
                return -EBUSY;
        }
 rme96->wcreg &= ~RME96_WCR_ADAT;
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
 rme96->playback_substream = substream;
 spin_unlock_irq(&rme96->lock);

 runtime->hw = snd_rme96_playback_spdif_info;
 if (!(rme96->wcreg & RME96_WCR_MASTER) &&
            snd_rme96_getinputtype(rme96) != RME96_INPUT_ANALOG &&
     (rate = snd_rme96_capture_getrate(rme96, &dummy)) > 0)
 {

                runtime->hw.rates = snd_pcm_rate_to_rate_bit(rate);
                runtime->hw.rate_min = rate;
                runtime->hw.rate_max = rate;
 }
 rme96_set_buffer_size_constraint(rme96, runtime);

 rme96->wcreg_spdif_stream = rme96->wcreg_spdif;
 rme96->spdif_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(rme96->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &rme96->spdif_ctl->id);
 return 0;
}
