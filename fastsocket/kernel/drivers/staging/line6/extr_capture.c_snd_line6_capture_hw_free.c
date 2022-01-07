
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_line6_pcm {int * buffer_in; } ;


 int kfree (int *) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int unlink_wait_clear_audio_in_urbs (struct snd_line6_pcm*) ;

__attribute__((used)) static int snd_line6_capture_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);
 unlink_wait_clear_audio_in_urbs(line6pcm);

 kfree(line6pcm->buffer_in);
 line6pcm->buffer_in = ((void*)0);

 return snd_pcm_lib_free_pages(substream);
}
