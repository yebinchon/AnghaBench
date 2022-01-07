
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct audio_stream* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct audio_stream {int dummy; } ;


 int au1000_setup_dma_link (struct audio_stream*,int ,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int
snd_au1000_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 struct audio_stream *stream = substream->private_data;
 int err;

 err = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 if (err < 0)
  return err;
 return au1000_setup_dma_link(stream,
         params_period_bytes(hw_params),
         params_periods(hw_params));
}
