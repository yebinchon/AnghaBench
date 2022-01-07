
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int num_all_adcs; scalar_t__* all_adcs; } ;
struct sigmatel_spec {int active_adcs; TYPE_1__ gen; int powerdown_adcs; } ;
struct hda_pcm_stream {scalar_t__ nid; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int AC_PWRST_D0 ;
 int AC_PWRST_D3 ;
 int AC_VERB_SET_POWER_STATE ;


 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void stac_capture_pcm_hook(struct hda_pcm_stream *hinfo,
      struct hda_codec *codec,
      struct snd_pcm_substream *substream,
      int action)
{
 struct sigmatel_spec *spec = codec->spec;
 int i, idx = 0;

 if (!spec->powerdown_adcs)
  return;

 for (i = 0; i < spec->gen.num_all_adcs; i++) {
  if (spec->gen.all_adcs[i] == hinfo->nid) {
   idx = i;
   break;
  }
 }

 switch (action) {
 case 128:
  msleep(40);
  snd_hda_codec_write(codec, hinfo->nid, 0,
        AC_VERB_SET_POWER_STATE, AC_PWRST_D0);
  spec->active_adcs |= (1 << idx);
  break;
 case 129:
  snd_hda_codec_write(codec, hinfo->nid, 0,
        AC_VERB_SET_POWER_STATE, AC_PWRST_D3);
  spec->active_adcs &= ~(1 << idx);
  break;
 }
}
