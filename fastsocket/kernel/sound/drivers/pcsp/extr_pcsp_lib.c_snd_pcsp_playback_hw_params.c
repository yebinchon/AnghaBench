
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int pcsp_sync_stop (struct snd_pcsp*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_pcsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcsp_playback_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *hw_params)
{
 struct snd_pcsp *chip = snd_pcm_substream_chip(substream);
 int err;
 pcsp_sync_stop(chip);
 err = snd_pcm_lib_malloc_pages(substream,
          params_buffer_bytes(hw_params));
 if (err < 0)
  return err;
 return 0;
}
