
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_plugin_format {int channels; int format; } ;
struct TYPE_2__ {unsigned int first; int step; scalar_t__ addr; } ;
struct snd_pcm_plugin_channel {int frames; int enabled; TYPE_1__ area; scalar_t__ wanted; } ;
struct snd_pcm_plugin {scalar_t__ stream; int buf_frames; scalar_t__ access; scalar_t__ buf; struct snd_pcm_plugin_channel* buf_channels; struct snd_pcm_plugin_format dst_format; struct snd_pcm_plugin_format src_format; } ;
typedef int ssize_t ;
typedef int snd_pcm_uframes_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_BUG_ON (size_t) ;
 int snd_pcm_format_physical_width (int ) ;
 int vfree (scalar_t__) ;
 scalar_t__ vmalloc (size_t) ;

__attribute__((used)) static int snd_pcm_plugin_alloc(struct snd_pcm_plugin *plugin, snd_pcm_uframes_t frames)
{
 struct snd_pcm_plugin_format *format;
 ssize_t width;
 size_t size;
 unsigned int channel;
 struct snd_pcm_plugin_channel *c;

 if (plugin->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  format = &plugin->src_format;
 } else {
  format = &plugin->dst_format;
 }
 if ((width = snd_pcm_format_physical_width(format->format)) < 0)
  return width;
 size = frames * format->channels * width;
 if (snd_BUG_ON(size % 8))
  return -ENXIO;
 size /= 8;
 if (plugin->buf_frames < frames) {
  vfree(plugin->buf);
  plugin->buf = vmalloc(size);
  plugin->buf_frames = frames;
 }
 if (!plugin->buf) {
  plugin->buf_frames = 0;
  return -ENOMEM;
 }
 c = plugin->buf_channels;
 if (plugin->access == SNDRV_PCM_ACCESS_RW_INTERLEAVED) {
  for (channel = 0; channel < format->channels; channel++, c++) {
   c->frames = frames;
   c->enabled = 1;
   c->wanted = 0;
   c->area.addr = plugin->buf;
   c->area.first = channel * width;
   c->area.step = format->channels * width;
  }
 } else if (plugin->access == SNDRV_PCM_ACCESS_RW_NONINTERLEAVED) {
  if (snd_BUG_ON(size % format->channels))
   return -EINVAL;
  size /= format->channels;
  for (channel = 0; channel < format->channels; channel++, c++) {
   c->frames = frames;
   c->enabled = 1;
   c->wanted = 0;
   c->area.addr = plugin->buf + (channel * size);
   c->area.first = 0;
   c->area.step = width;
  }
 } else
  return -EINVAL;
 return 0;
}
