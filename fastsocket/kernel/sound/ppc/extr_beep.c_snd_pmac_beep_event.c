
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ running; } ;
struct TYPE_4__ {scalar_t__ running; } ;
struct snd_pmac {int* freq_table; int reg_lock; TYPE_1__ capture; TYPE_2__ playback; struct pmac_beep* beep; } ;
struct pmac_beep {int running; int hz; short volume; short volume_play; int nsamples; short* buf; int addr; } ;
struct input_dev {int dummy; } ;


 int BEEP_BUFLEN ;
 int BEEP_SRATE ;
 unsigned int EV_SND ;


 short* beep_wform ;
 struct snd_pmac* input_get_drvdata (struct input_dev*) ;
 int snd_pmac_beep_dma_start (struct snd_pmac*,int,int ,int) ;
 int snd_pmac_beep_stop (struct snd_pmac*) ;
 int snd_pmac_rate_index (struct snd_pmac*,TYPE_2__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_pmac_beep_event(struct input_dev *dev, unsigned int type,
          unsigned int code, int hz)
{
 struct snd_pmac *chip;
 struct pmac_beep *beep;
 unsigned long flags;
 int beep_speed = 0;
 int srate;
 int period, ncycles, nsamples;
 int i, j, f;
 short *p;

 if (type != EV_SND)
  return -1;

 switch (code) {
 case 129: if (hz) hz = 1000;
 case 128: break;
 default: return -1;
 }

 chip = input_get_drvdata(dev);
 if (! chip || (beep = chip->beep) == ((void*)0))
  return -1;

 if (! hz) {
  spin_lock_irqsave(&chip->reg_lock, flags);
  if (beep->running)
   snd_pmac_beep_stop(chip);
  spin_unlock_irqrestore(&chip->reg_lock, flags);
  return 0;
 }

 beep_speed = snd_pmac_rate_index(chip, &chip->playback, BEEP_SRATE);
 srate = chip->freq_table[beep_speed];

 if (hz <= srate / BEEP_BUFLEN || hz > srate / 2)
  hz = 1000;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (chip->playback.running || chip->capture.running || beep->running) {
  spin_unlock_irqrestore(&chip->reg_lock, flags);
  return 0;
 }
 beep->running = 1;
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 if (hz == beep->hz && beep->volume == beep->volume_play) {
  nsamples = beep->nsamples;
 } else {
  period = srate * 256 / hz;
  ncycles = BEEP_BUFLEN * 256 / period;
  nsamples = (period * ncycles) >> 8;
  f = ncycles * 65536 / nsamples;
  j = 0;
  p = beep->buf;
  for (i = 0; i < nsamples; ++i, p += 2) {
   p[0] = p[1] = beep_wform[j >> 8] * beep->volume;
   j = (j + f) & 0xffff;
  }
  beep->hz = hz;
  beep->volume_play = beep->volume;
  beep->nsamples = nsamples;
 }

 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_pmac_beep_dma_start(chip, beep->nsamples * 4, beep->addr, beep_speed);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
