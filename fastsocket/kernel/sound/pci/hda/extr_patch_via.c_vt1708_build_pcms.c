
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct hda_pcm* pcm_rec; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_pcm {scalar_t__ pcm_type; TYPE_2__* stream; } ;
struct hda_codec {int vendor_id; int num_pcms; struct via_spec* spec; } ;
struct TYPE_4__ {int formats; int substreams; } ;


 scalar_t__ HDA_PCM_TYPE_AUDIO ;
 int SNDRV_PCM_FMTBIT_S16_LE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_hda_gen_build_pcms (struct hda_codec*) ;

__attribute__((used)) static int vt1708_build_pcms(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 int i, err;

 err = snd_hda_gen_build_pcms(codec);
 if (err < 0 || codec->vendor_id != 0x11061708)
  return err;





 for (i = 0; i < codec->num_pcms; i++) {
  struct hda_pcm *info = &spec->gen.pcm_rec[i];
  if (!info->stream[SNDRV_PCM_STREAM_PLAYBACK].substreams ||
      info->pcm_type != HDA_PCM_TYPE_AUDIO)
   continue;
  info->stream[SNDRV_PCM_STREAM_PLAYBACK].formats =
   SNDRV_PCM_FMTBIT_S16_LE;
 }

 return 0;
}
