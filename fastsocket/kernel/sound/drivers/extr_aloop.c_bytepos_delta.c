
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_pcm {unsigned int irq_pos; unsigned int pcm_bps; unsigned int last_drift; unsigned int period_size_frac; int period_update_pending; } ;


 unsigned long byte_pos (struct loopback_pcm*,unsigned int) ;

__attribute__((used)) static inline unsigned int bytepos_delta(struct loopback_pcm *dpcm,
      unsigned int jiffies_delta)
{
 unsigned long last_pos;
 unsigned int delta;

 last_pos = byte_pos(dpcm, dpcm->irq_pos);
 dpcm->irq_pos += jiffies_delta * dpcm->pcm_bps;
 delta = byte_pos(dpcm, dpcm->irq_pos) - last_pos;
 if (delta >= dpcm->last_drift)
  delta -= dpcm->last_drift;
 dpcm->last_drift = 0;
 if (dpcm->irq_pos >= dpcm->period_size_frac) {
  dpcm->irq_pos %= dpcm->period_size_frac;
  dpcm->period_update_pending = 1;
 }
 return delta;
}
