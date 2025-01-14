
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_pcm {unsigned long last_jiffies; unsigned int last_drift; } ;
struct loopback_cable {unsigned int running; unsigned int pause; int lock; struct loopback_pcm** streams; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int bytepos_delta (struct loopback_pcm*,unsigned long) ;
 int bytepos_finish (struct loopback_pcm*,unsigned int) ;
 int clear_capture_buf (struct loopback_pcm*,unsigned int) ;
 int copy_play_buf (struct loopback_pcm*,struct loopback_pcm*,unsigned int) ;
 unsigned long jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int loopback_pos_update(struct loopback_cable *cable)
{
 struct loopback_pcm *dpcm_play =
   cable->streams[SNDRV_PCM_STREAM_PLAYBACK];
 struct loopback_pcm *dpcm_capt =
   cable->streams[SNDRV_PCM_STREAM_CAPTURE];
 unsigned long delta_play = 0, delta_capt = 0;
 unsigned int running, count1, count2;
 unsigned long flags;

 spin_lock_irqsave(&cable->lock, flags);
 running = cable->running ^ cable->pause;
 if (running & (1 << SNDRV_PCM_STREAM_PLAYBACK)) {
  delta_play = jiffies - dpcm_play->last_jiffies;
  dpcm_play->last_jiffies += delta_play;
 }

 if (running & (1 << SNDRV_PCM_STREAM_CAPTURE)) {
  delta_capt = jiffies - dpcm_capt->last_jiffies;
  dpcm_capt->last_jiffies += delta_capt;
 }

 if (delta_play == 0 && delta_capt == 0)
  goto unlock;

 if (delta_play > delta_capt) {
  count1 = bytepos_delta(dpcm_play, delta_play - delta_capt);
  bytepos_finish(dpcm_play, count1);
  delta_play = delta_capt;
 } else if (delta_play < delta_capt) {
  count1 = bytepos_delta(dpcm_capt, delta_capt - delta_play);
  clear_capture_buf(dpcm_capt, count1);
  bytepos_finish(dpcm_capt, count1);
  delta_capt = delta_play;
 }

 if (delta_play == 0 && delta_capt == 0)
  goto unlock;


 count1 = bytepos_delta(dpcm_play, delta_play);
 count2 = bytepos_delta(dpcm_capt, delta_capt);
 if (count1 < count2) {
  dpcm_capt->last_drift = count2 - count1;
  count1 = count2;
 } else if (count1 > count2) {
  dpcm_play->last_drift = count1 - count2;
 }
 copy_play_buf(dpcm_play, dpcm_capt, count1);
 bytepos_finish(dpcm_play, count1);
 bytepos_finish(dpcm_capt, count1);
 unlock:
 spin_unlock_irqrestore(&cable->lock, flags);
 return running;
}
