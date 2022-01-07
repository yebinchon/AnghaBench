
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct hdmi_spec {int dummy; } ;
struct hda_pcm_stream {int nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {int pin_nid; } ;
struct TYPE_3__ {int channels; } ;


 int check_non_pcm_per_cvt (struct hda_codec*,int ) ;
 TYPE_2__* get_pin (struct hdmi_spec*,int) ;
 int hdmi_set_channel_count (struct hda_codec*,int ,int ) ;
 int hdmi_setup_audio_infoframe (struct hda_codec*,int,int,struct snd_pcm_substream*) ;
 int hdmi_setup_stream (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;
 int hinfo_to_pin_index (struct hdmi_spec*,struct hda_pcm_stream*) ;

__attribute__((used)) static int generic_hdmi_playback_pcm_prepare(struct hda_pcm_stream *hinfo,
        struct hda_codec *codec,
        unsigned int stream_tag,
        unsigned int format,
        struct snd_pcm_substream *substream)
{
 hda_nid_t cvt_nid = hinfo->nid;
 struct hdmi_spec *spec = codec->spec;
 int pin_idx = hinfo_to_pin_index(spec, hinfo);
 hda_nid_t pin_nid = get_pin(spec, pin_idx)->pin_nid;
 bool non_pcm;

 non_pcm = check_non_pcm_per_cvt(codec, cvt_nid);

 hdmi_set_channel_count(codec, cvt_nid, substream->runtime->channels);

 hdmi_setup_audio_infoframe(codec, pin_idx, non_pcm, substream);

 return hdmi_setup_stream(codec, cvt_nid, pin_nid, stream_tag, format);
}
