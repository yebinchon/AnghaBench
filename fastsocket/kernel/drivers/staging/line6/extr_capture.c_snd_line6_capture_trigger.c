
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {int flags; scalar_t__ count_in; } ;


 int BIT_RUNNING_CAPTURE ;
 int EINVAL ;


 int clear_bit (int ,int *) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int submit_audio_in_all_urbs (struct snd_pcm_substream*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int unlink_audio_in_urbs (struct snd_line6_pcm*) ;

int snd_line6_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 int err;
 line6pcm->count_in = 0;

 switch (cmd) {
 case 129:
  if (!test_and_set_bit(BIT_RUNNING_CAPTURE, &line6pcm->flags)) {
   err = submit_audio_in_all_urbs(substream);

   if (err < 0) {
    clear_bit(BIT_RUNNING_CAPTURE, &line6pcm->flags);
    return err;
   }
  }

  break;

 case 128:
  if (test_and_clear_bit(BIT_RUNNING_CAPTURE, &line6pcm->flags))
   unlink_audio_in_urbs(line6pcm);

  break;

 default:
  return -EINVAL;
 }

 return 0;
}
