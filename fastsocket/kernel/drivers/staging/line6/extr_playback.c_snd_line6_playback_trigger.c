
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {int flags; scalar_t__ count_out; } ;


 int BIT_PAUSE_PLAYBACK ;
 int BIT_RUNNING_PLAYBACK ;
 int EINVAL ;




 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int submit_audio_out_all_urbs (struct snd_pcm_substream*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int unlink_audio_out_urbs (struct snd_line6_pcm*) ;

int snd_line6_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 int err;
 line6pcm->count_out = 0;

 switch (cmd) {
 case 129:
  if (!test_and_set_bit(BIT_RUNNING_PLAYBACK, &line6pcm->flags)) {
   err = submit_audio_out_all_urbs(substream);

   if (err < 0) {
    clear_bit(BIT_RUNNING_PLAYBACK, &line6pcm->flags);
    return err;
   }
  }

  break;

 case 128:
  if (test_and_clear_bit(BIT_RUNNING_PLAYBACK, &line6pcm->flags))
   unlink_audio_out_urbs(line6pcm);

  break;

 case 131:
  set_bit(BIT_PAUSE_PLAYBACK, &line6pcm->flags);
  break;

 case 130:
  clear_bit(BIT_PAUSE_PLAYBACK, &line6pcm->flags);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
