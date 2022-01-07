
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rates; int formats; int channels_max; int channels_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct hdmi_eld {int info; scalar_t__ eld_valid; } ;
struct hdmi_spec_per_pin {int pin_nid; struct hdmi_eld sink_eld; } ;
struct hdmi_spec_per_cvt {int assigned; int maxbps; int formats; int rates; int channels_max; int channels_min; int cvt_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_pcm_stream {int rates; int formats; int channels_max; int channels_min; int nid; int maxbps; } ;
struct hda_codec {int vendor_id; struct hdmi_spec* spec; } ;


 int AC_VERB_SET_CONNECT_SEL ;
 int EINVAL ;
 int ENODEV ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int haswell_config_cvts (struct hda_codec*,int,int) ;
 int hdmi_choose_cvt (struct hda_codec*,int,int*,int*) ;
 int hinfo_to_pin_index (struct hdmi_spec*,struct hda_pcm_stream*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_spdif_ctls_assign (struct hda_codec*,int,int ) ;
 int snd_hda_spdif_ctls_unassign (struct hda_codec*,int) ;
 int snd_hdmi_eld_update_pcm_info (int *,struct hda_pcm_stream*) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int static_hdmi_pcm ;

__attribute__((used)) static int hdmi_pcm_open(struct hda_pcm_stream *hinfo,
    struct hda_codec *codec,
    struct snd_pcm_substream *substream)
{
 struct hdmi_spec *spec = codec->spec;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int pin_idx, cvt_idx, mux_idx = 0;
 struct hdmi_spec_per_pin *per_pin;
 struct hdmi_eld *eld;
 struct hdmi_spec_per_cvt *per_cvt = ((void*)0);
 int err;


 pin_idx = hinfo_to_pin_index(spec, hinfo);
 if (snd_BUG_ON(pin_idx < 0))
  return -EINVAL;
 per_pin = get_pin(spec, pin_idx);
 eld = &per_pin->sink_eld;

 err = hdmi_choose_cvt(codec, pin_idx, &cvt_idx, &mux_idx);
 if (err < 0)
  return err;

 per_cvt = get_cvt(spec, cvt_idx);

 per_cvt->assigned = 1;
 hinfo->nid = per_cvt->cvt_nid;

 snd_hda_codec_write_cache(codec, per_pin->pin_nid, 0,
       AC_VERB_SET_CONNECT_SEL,
       mux_idx);


 if (codec->vendor_id == 0x80862807)
  haswell_config_cvts(codec, pin_idx, mux_idx);

 snd_hda_spdif_ctls_assign(codec, pin_idx, per_cvt->cvt_nid);


 hinfo->channels_min = per_cvt->channels_min;
 hinfo->channels_max = per_cvt->channels_max;
 hinfo->rates = per_cvt->rates;
 hinfo->formats = per_cvt->formats;
 hinfo->maxbps = per_cvt->maxbps;


 if (!static_hdmi_pcm && eld->eld_valid) {
  snd_hdmi_eld_update_pcm_info(&eld->info, hinfo);
  if (hinfo->channels_min > hinfo->channels_max ||
      !hinfo->rates || !hinfo->formats) {
   per_cvt->assigned = 0;
   hinfo->nid = 0;
   snd_hda_spdif_ctls_unassign(codec, pin_idx);
   return -ENODEV;
  }
 }


 runtime->hw.channels_min = hinfo->channels_min;
 runtime->hw.channels_max = hinfo->channels_max;
 runtime->hw.formats = hinfo->formats;
 runtime->hw.rates = hinfo->rates;

 snd_pcm_hw_constraint_step(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 return 0;
}
