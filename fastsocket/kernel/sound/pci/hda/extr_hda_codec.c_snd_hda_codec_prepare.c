
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_3__ {int (* prepare ) (struct hda_pcm_stream*,struct hda_codec*,unsigned int,unsigned int,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct hda_codec {TYPE_2__* bus; } ;
struct TYPE_4__ {int prepare_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int purify_inactive_streams (struct hda_codec*) ;
 int stub1 (struct hda_pcm_stream*,struct hda_codec*,unsigned int,unsigned int,struct snd_pcm_substream*) ;

int snd_hda_codec_prepare(struct hda_codec *codec,
     struct hda_pcm_stream *hinfo,
     unsigned int stream,
     unsigned int format,
     struct snd_pcm_substream *substream)
{
 int ret;
 mutex_lock(&codec->bus->prepare_mutex);
 ret = hinfo->ops.prepare(hinfo, codec, stream, format, substream);
 if (ret >= 0)
  purify_inactive_streams(codec);
 mutex_unlock(&codec->bus->prepare_mutex);
 return ret;
}
