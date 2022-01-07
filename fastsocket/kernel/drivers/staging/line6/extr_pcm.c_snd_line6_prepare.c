
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {scalar_t__ bytes_in; scalar_t__ pos_in_done; scalar_t__ bytes_out; scalar_t__ pos_out_done; scalar_t__ pos_out; int flags; } ;


 int BIT_PREPARED ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int test_and_set_bit (int ,int *) ;
 int unlink_wait_clear_audio_in_urbs (struct snd_line6_pcm*) ;
 int unlink_wait_clear_audio_out_urbs (struct snd_line6_pcm*) ;

int snd_line6_prepare(struct snd_pcm_substream *substream)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);

 if (!test_and_set_bit(BIT_PREPARED, &line6pcm->flags)) {
  unlink_wait_clear_audio_out_urbs(line6pcm);
  line6pcm->pos_out = 0;
  line6pcm->pos_out_done = 0;

  unlink_wait_clear_audio_in_urbs(line6pcm);
  line6pcm->bytes_out = 0;
  line6pcm->pos_in_done = 0;
  line6pcm->bytes_in = 0;
 }

 return 0;
}
