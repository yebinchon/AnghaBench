
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int auto_mic; int cur_adc_idx; scalar_t__* adc_nids; scalar_t__ cur_adc; int cur_adc_format; int cur_adc_stream_tag; } ;
typedef scalar_t__ hda_nid_t ;


 int AUTO_MIC_PORTC ;
 int __snd_hda_codec_cleanup_stream (struct hda_codec*,scalar_t__,int) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,scalar_t__,int ,int ,int ) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void cxt5051_portc_automic(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 unsigned int present;
 hda_nid_t new_adc;

 if (!(spec->auto_mic & AUTO_MIC_PORTC))
  return;
 present = snd_hda_jack_detect(codec, 0x18);
 if (present)
  spec->cur_adc_idx = 1;
 else
  spec->cur_adc_idx = 0;
 new_adc = spec->adc_nids[spec->cur_adc_idx];
 if (spec->cur_adc && spec->cur_adc != new_adc) {

  __snd_hda_codec_cleanup_stream(codec, spec->cur_adc, 1);
  spec->cur_adc = new_adc;
  snd_hda_codec_setup_stream(codec, new_adc,
        spec->cur_adc_stream_tag, 0,
        spec->cur_adc_format);
 }
}
