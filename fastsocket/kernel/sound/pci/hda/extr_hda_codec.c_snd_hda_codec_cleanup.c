
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_3__ {int (* cleanup ) (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct hda_codec {TYPE_2__* bus; } ;
struct TYPE_4__ {int prepare_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ;

void snd_hda_codec_cleanup(struct hda_codec *codec,
      struct hda_pcm_stream *hinfo,
      struct snd_pcm_substream *substream)
{
 mutex_lock(&codec->bus->prepare_mutex);
 hinfo->ops.cleanup(hinfo, codec, substream);
 mutex_unlock(&codec->bus->prepare_mutex);
}
