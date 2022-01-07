
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin {struct snd_pcm_plugin* prev; int (* src_frames ) (struct snd_pcm_plugin*,int ) ;struct snd_pcm_plugin* next; int (* dst_frames ) (struct snd_pcm_plugin*,int ) ;} ;
typedef int snd_pcm_uframes_t ;


 int ENXIO ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_pcm_plugin* snd_pcm_plug_first (struct snd_pcm_substream*) ;
 struct snd_pcm_plugin* snd_pcm_plug_last (struct snd_pcm_substream*) ;
 scalar_t__ snd_pcm_plug_stream (struct snd_pcm_substream*) ;
 int snd_pcm_plugin_alloc (struct snd_pcm_plugin*,int ) ;
 int stub1 (struct snd_pcm_plugin*,int ) ;
 int stub2 (struct snd_pcm_plugin*,int ) ;

int snd_pcm_plug_alloc(struct snd_pcm_substream *plug, snd_pcm_uframes_t frames)
{
 int err;
 if (snd_BUG_ON(!snd_pcm_plug_first(plug)))
  return -ENXIO;
 if (snd_pcm_plug_stream(plug) == SNDRV_PCM_STREAM_PLAYBACK) {
  struct snd_pcm_plugin *plugin = snd_pcm_plug_first(plug);
  while (plugin->next) {
   if (plugin->dst_frames)
    frames = plugin->dst_frames(plugin, frames);
   if (snd_BUG_ON(frames <= 0))
    return -ENXIO;
   plugin = plugin->next;
   err = snd_pcm_plugin_alloc(plugin, frames);
   if (err < 0)
    return err;
  }
 } else {
  struct snd_pcm_plugin *plugin = snd_pcm_plug_last(plug);
  while (plugin->prev) {
   if (plugin->src_frames)
    frames = plugin->src_frames(plugin, frames);
   if (snd_BUG_ON(frames <= 0))
    return -ENXIO;
   plugin = plugin->prev;
   err = snd_pcm_plugin_alloc(plugin, frames);
   if (err < 0)
    return err;
  }
 }
 return 0;
}
