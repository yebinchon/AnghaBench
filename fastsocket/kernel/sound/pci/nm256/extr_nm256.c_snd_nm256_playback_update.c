
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm256_stream {scalar_t__ substream; scalar_t__ running; } ;
struct nm256 {int reg_lock; struct nm256_stream* streams; } ;


 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_nm256_playback_mark (struct nm256*,struct nm256_stream*) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
snd_nm256_playback_update(struct nm256 *chip)
{
 struct nm256_stream *s;

 s = &chip->streams[SNDRV_PCM_STREAM_PLAYBACK];
 if (s->running && s->substream) {
  spin_unlock(&chip->reg_lock);
  snd_pcm_period_elapsed(s->substream);
  spin_lock(&chip->reg_lock);
  snd_nm256_playback_mark(chip, s);
 }
}
