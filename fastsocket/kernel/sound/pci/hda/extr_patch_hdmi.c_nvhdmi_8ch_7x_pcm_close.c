
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdmi_spec {int multiout; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;


 int AC_VERB_SET_CHANNEL_STREAMID ;
 int AC_VERB_SET_STREAM_FORMAT ;
 int nvhdmi_8ch_7x_set_info_frame_parameters (struct hda_codec*,int) ;
 int * nvhdmi_con_nids_7x ;
 int nvhdmi_master_con_nid_7x ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_multi_out_dig_close (struct hda_codec*,int *) ;

__attribute__((used)) static int nvhdmi_8ch_7x_pcm_close(struct hda_pcm_stream *hinfo,
       struct hda_codec *codec,
       struct snd_pcm_substream *substream)
{
 struct hdmi_spec *spec = codec->spec;
 int i;

 snd_hda_codec_write(codec, nvhdmi_master_con_nid_7x,
   0, AC_VERB_SET_CHANNEL_STREAMID, 0);
 for (i = 0; i < 4; i++) {

  snd_hda_codec_write(codec, nvhdmi_con_nids_7x[i], 0,
    AC_VERB_SET_CHANNEL_STREAMID, 0);

  snd_hda_codec_write(codec, nvhdmi_con_nids_7x[i], 0,
    AC_VERB_SET_STREAM_FORMAT, 0);
 }



 nvhdmi_8ch_7x_set_info_frame_parameters(codec, 8);

 return snd_hda_multi_out_dig_close(codec, &spec->multiout);
}
