
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int channels; } ;
struct snd_pcm_plugin {TYPE_1__ src_format; scalar_t__ extra_data; } ;
struct rate_priv {TYPE_2__* channels; scalar_t__ pos; } ;
struct TYPE_4__ {scalar_t__ last_S2; scalar_t__ last_S1; } ;



__attribute__((used)) static void rate_init(struct snd_pcm_plugin *plugin)
{
 unsigned int channel;
 struct rate_priv *data = (struct rate_priv *)plugin->extra_data;
 data->pos = 0;
 for (channel = 0; channel < plugin->src_format.channels; channel++) {
  data->channels[channel].last_S1 = 0;
  data->channels[channel].last_S2 = 0;
 }
}
