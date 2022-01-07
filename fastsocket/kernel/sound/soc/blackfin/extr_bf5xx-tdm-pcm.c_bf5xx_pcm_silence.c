
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {unsigned char* dma_area; } ;


 int memset (unsigned char*,char,int) ;

__attribute__((used)) static int bf5xx_pcm_silence(struct snd_pcm_substream *substream,
 int channel, snd_pcm_uframes_t pos, snd_pcm_uframes_t count)
{
 unsigned char *buf = substream->runtime->dma_area;
 buf += pos * 8 * 4;
 memset(buf, '\0', count * 8 * 4);

 return 0;
}
