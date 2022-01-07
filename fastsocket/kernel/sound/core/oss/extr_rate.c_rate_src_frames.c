
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {scalar_t__ rate; } ;
struct snd_pcm_plugin {TYPE_2__ dst_format; TYPE_1__ src_format; scalar_t__ extra_data; } ;
struct rate_priv {int pitch; int old_src_frames; int old_dst_frames; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;


 int BITS ;
 int ENXIO ;
 int SHIFT ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static snd_pcm_sframes_t rate_src_frames(struct snd_pcm_plugin *plugin, snd_pcm_uframes_t frames)
{
 struct rate_priv *data;
 snd_pcm_sframes_t res;

 if (snd_BUG_ON(!plugin))
  return -ENXIO;
 if (frames == 0)
  return 0;
 data = (struct rate_priv *)plugin->extra_data;
 if (plugin->src_format.rate < plugin->dst_format.rate) {
  res = (((frames * data->pitch) + (BITS/2)) >> SHIFT);
 } else {
  res = (((frames << SHIFT) + (data->pitch / 2)) / data->pitch);
 }
 if (data->old_src_frames > 0) {
  snd_pcm_sframes_t frames1 = frames, res1 = data->old_dst_frames;
  while (data->old_src_frames < frames1) {
   frames1 >>= 1;
   res1 <<= 1;
  }
  while (data->old_src_frames > frames1) {
   frames1 <<= 1;
   res1 >>= 1;
  }
  if (data->old_src_frames == frames1)
   return res1;
 }
 data->old_src_frames = frames;
 data->old_dst_frames = res;
 return res;
}
