
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_pcm_stream {scalar_t__ substreams; } ;
struct hda_pcm {struct hda_pcm_stream* stream; int name; } ;
struct hda_codec {struct hda_bus* bus; } ;
struct TYPE_2__ {int (* attach_pcm ) (struct hda_bus*,struct hda_codec*,struct hda_pcm*) ;} ;
struct hda_bus {TYPE_1__ ops; } ;


 int EINVAL ;
 int set_pcm_default_values (struct hda_codec*,struct hda_pcm_stream*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct hda_bus*,struct hda_codec*,struct hda_pcm*) ;

__attribute__((used)) static int snd_hda_attach_pcm(struct hda_codec *codec, struct hda_pcm *pcm)
{
 struct hda_bus *bus = codec->bus;
 struct hda_pcm_stream *info;
 int stream, err;

 if (snd_BUG_ON(!pcm->name))
  return -EINVAL;
 for (stream = 0; stream < 2; stream++) {
  info = &pcm->stream[stream];
  if (info->substreams) {
   err = set_pcm_default_values(codec, info);
   if (err < 0)
    return err;
  }
 }
 return bus->ops.attach_pcm(bus, codec, pcm);
}
