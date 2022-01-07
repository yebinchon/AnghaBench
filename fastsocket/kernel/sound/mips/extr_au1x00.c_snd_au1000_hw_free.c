
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct audio_stream* private_data; } ;
struct audio_stream {int dummy; } ;


 int au1000_release_dma_link (struct audio_stream*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_au1000_hw_free(struct snd_pcm_substream *substream)
{
 struct audio_stream *stream = substream->private_data;
 au1000_release_dma_link(stream);
 return snd_pcm_lib_free_pages(substream);
}
