
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 size_t SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 int au1x_pcm_dbdma_free (int ) ;
 int * au1xpsc_audio_pcmdma ;

__attribute__((used)) static int au1xpsc_pcm_close(struct snd_pcm_substream *substream)
{
 au1x_pcm_dbdma_free(au1xpsc_audio_pcmdma[SUBSTREAM_TYPE(substream)]);
 return 0;
}
