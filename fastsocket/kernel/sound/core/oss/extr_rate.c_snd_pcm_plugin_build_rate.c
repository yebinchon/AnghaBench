
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin_format {int channels; scalar_t__ format; int rate; } ;
struct snd_pcm_plugin {int action; int dst_frames; int src_frames; int transfer; scalar_t__ extra_data; } ;
struct rate_priv {int pitch; scalar_t__ old_dst_frames; scalar_t__ old_src_frames; scalar_t__ pos; int func; } ;
struct rate_channel {int dummy; } ;


 int ENXIO ;
 int SHIFT ;
 scalar_t__ SNDRV_PCM_FORMAT_S16 ;
 int rate_action ;
 int rate_dst_frames ;
 int rate_init (struct snd_pcm_plugin*) ;
 int rate_src_frames ;
 int rate_transfer ;
 int resample_expand ;
 int resample_shrink ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_pcm_plugin_build (struct snd_pcm_substream*,char*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,int,struct snd_pcm_plugin**) ;

int snd_pcm_plugin_build_rate(struct snd_pcm_substream *plug,
         struct snd_pcm_plugin_format *src_format,
         struct snd_pcm_plugin_format *dst_format,
         struct snd_pcm_plugin **r_plugin)
{
 int err;
 struct rate_priv *data;
 struct snd_pcm_plugin *plugin;

 if (snd_BUG_ON(!r_plugin))
  return -ENXIO;
 *r_plugin = ((void*)0);

 if (snd_BUG_ON(src_format->channels != dst_format->channels))
  return -ENXIO;
 if (snd_BUG_ON(src_format->channels <= 0))
  return -ENXIO;
 if (snd_BUG_ON(src_format->format != SNDRV_PCM_FORMAT_S16))
  return -ENXIO;
 if (snd_BUG_ON(dst_format->format != SNDRV_PCM_FORMAT_S16))
  return -ENXIO;
 if (snd_BUG_ON(src_format->rate == dst_format->rate))
  return -ENXIO;

 err = snd_pcm_plugin_build(plug, "rate conversion",
       src_format, dst_format,
       sizeof(struct rate_priv) +
       src_format->channels * sizeof(struct rate_channel),
       &plugin);
 if (err < 0)
  return err;
 data = (struct rate_priv *)plugin->extra_data;
 if (src_format->rate < dst_format->rate) {
  data->pitch = ((src_format->rate << SHIFT) + (dst_format->rate >> 1)) / dst_format->rate;
  data->func = resample_expand;
 } else {
  data->pitch = ((dst_format->rate << SHIFT) + (src_format->rate >> 1)) / src_format->rate;
  data->func = resample_shrink;
 }
 data->pos = 0;
 rate_init(plugin);
 data->old_src_frames = data->old_dst_frames = 0;
 plugin->transfer = rate_transfer;
 plugin->src_frames = rate_src_frames;
 plugin->dst_frames = rate_dst_frames;
 plugin->action = rate_action;
 *r_plugin = plugin;
 return 0;
}
