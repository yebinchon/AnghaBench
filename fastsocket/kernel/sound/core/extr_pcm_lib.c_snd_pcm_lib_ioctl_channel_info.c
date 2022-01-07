
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int info; int access; int channels; size_t dma_bytes; int format; } ;
struct snd_pcm_channel_info {int offset; int first; int channel; int step; } ;






 int SNDRV_PCM_INFO_MMAP ;
 int snd_BUG () ;
 int snd_pcm_format_physical_width (int ) ;

__attribute__((used)) static int snd_pcm_lib_ioctl_channel_info(struct snd_pcm_substream *substream,
       void *arg)
{
 struct snd_pcm_channel_info *info = arg;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int width;
 if (!(runtime->info & SNDRV_PCM_INFO_MMAP)) {
  info->offset = -1;
  return 0;
 }
 width = snd_pcm_format_physical_width(runtime->format);
 if (width < 0)
  return width;
 info->offset = 0;
 switch (runtime->access) {
 case 131:
 case 129:
  info->first = info->channel * width;
  info->step = runtime->channels * width;
  break;
 case 130:
 case 128:
 {
  size_t size = runtime->dma_bytes / runtime->channels;
  info->first = info->channel * size * 8;
  info->step = width;
  break;
 }
 default:
  snd_BUG();
  break;
 }
 return 0;
}
