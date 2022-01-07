
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin_format {scalar_t__ rate; scalar_t__ format; } ;
struct snd_pcm_plugin {int transfer; } ;


 int ENXIO ;
 int route_transfer ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_pcm_plugin_build (struct snd_pcm_substream*,char*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,int ,struct snd_pcm_plugin**) ;

int snd_pcm_plugin_build_route(struct snd_pcm_substream *plug,
          struct snd_pcm_plugin_format *src_format,
          struct snd_pcm_plugin_format *dst_format,
          struct snd_pcm_plugin **r_plugin)
{
 struct snd_pcm_plugin *plugin;
 int err;

 if (snd_BUG_ON(!r_plugin))
  return -ENXIO;
 *r_plugin = ((void*)0);
 if (snd_BUG_ON(src_format->rate != dst_format->rate))
  return -ENXIO;
 if (snd_BUG_ON(src_format->format != dst_format->format))
  return -ENXIO;

 err = snd_pcm_plugin_build(plug, "route conversion",
       src_format, dst_format, 0, &plugin);
 if (err < 0)
  return err;

 plugin->transfer = route_transfer;
 *r_plugin = plugin;
 return 0;
}
