
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cs5535audio {int ac97; } ;


 int olpc_capture_close (int ) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs5535audio_capture_close(struct snd_pcm_substream *substream)
{
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 olpc_capture_close(cs5535au->ac97);
 return 0;
}
