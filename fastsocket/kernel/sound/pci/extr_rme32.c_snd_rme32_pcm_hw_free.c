
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct rme32 {int fullduplex_mode; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_rme32_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 if (! rme32->fullduplex_mode)
  return 0;
 return snd_pcm_lib_free_pages(substream);
}
