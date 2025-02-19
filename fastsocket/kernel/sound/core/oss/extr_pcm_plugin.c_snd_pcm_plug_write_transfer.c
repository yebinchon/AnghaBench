
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin_channel {int dummy; } ;
struct snd_pcm_plugin {int (* dst_frames ) (struct snd_pcm_plugin*,int) ;int (* client_channels ) (struct snd_pcm_plugin*,int,struct snd_pcm_plugin_channel**) ;int (* src_frames ) (struct snd_pcm_plugin*,int) ;int (* transfer ) (struct snd_pcm_plugin*,struct snd_pcm_plugin_channel*,struct snd_pcm_plugin_channel*,int) ;int name; struct snd_pcm_plugin* next; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;


 int pdprintf (char*,int ,int) ;
 int snd_pcm_plug_client_size (struct snd_pcm_substream*,int) ;
 struct snd_pcm_plugin* snd_pcm_plug_first (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_plugin*,int) ;
 int stub2 (struct snd_pcm_plugin*,int,struct snd_pcm_plugin_channel**) ;
 int stub3 (struct snd_pcm_plugin*,int) ;
 int stub4 (struct snd_pcm_plugin*,struct snd_pcm_plugin_channel*,struct snd_pcm_plugin_channel*,int) ;

snd_pcm_sframes_t snd_pcm_plug_write_transfer(struct snd_pcm_substream *plug, struct snd_pcm_plugin_channel *src_channels, snd_pcm_uframes_t size)
{
 struct snd_pcm_plugin *plugin, *next;
 struct snd_pcm_plugin_channel *dst_channels;
 int err;
 snd_pcm_sframes_t frames = size;

 plugin = snd_pcm_plug_first(plug);
 while (plugin && frames > 0) {
  if ((next = plugin->next) != ((void*)0)) {
   snd_pcm_sframes_t frames1 = frames;
   if (plugin->dst_frames)
    frames1 = plugin->dst_frames(plugin, frames);
   if ((err = next->client_channels(next, frames1, &dst_channels)) < 0) {
    return err;
   }
   if (err != frames1) {
    frames = err;
    if (plugin->src_frames)
     frames = plugin->src_frames(plugin, frames1);
   }
  } else
   dst_channels = ((void*)0);
  pdprintf("write plugin: %s, %li\n", plugin->name, frames);
  if ((frames = plugin->transfer(plugin, src_channels, dst_channels, frames)) < 0)
   return frames;
  src_channels = dst_channels;
  plugin = next;
 }
 return snd_pcm_plug_client_size(plug, frames);
}
