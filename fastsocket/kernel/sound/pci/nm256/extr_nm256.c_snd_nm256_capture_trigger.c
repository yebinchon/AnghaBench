
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct nm256_stream {int running; } ;
struct nm256 {int reg_lock; } ;
struct TYPE_2__ {struct nm256_stream* private_data; } ;


 int EINVAL ;
 int ENXIO ;




 scalar_t__ snd_BUG_ON (int) ;
 int snd_nm256_capture_start (struct nm256*,struct nm256_stream*,struct snd_pcm_substream*) ;
 int snd_nm256_capture_stop (struct nm256*) ;
 struct nm256* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
snd_nm256_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct nm256 *chip = snd_pcm_substream_chip(substream);
 struct nm256_stream *s = substream->runtime->private_data;
 int err = 0;

 if (snd_BUG_ON(!s))
  return -ENXIO;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 131:
  if (! s->running) {
   snd_nm256_capture_start(chip, s, substream);
   s->running = 1;
  }
  break;
 case 129:
 case 128:
  if (s->running) {
   snd_nm256_capture_stop(chip);
   s->running = 0;
  }
  break;
 default:
  err = -EINVAL;
  break;
 }
 spin_unlock(&chip->reg_lock);
 return err;
}
