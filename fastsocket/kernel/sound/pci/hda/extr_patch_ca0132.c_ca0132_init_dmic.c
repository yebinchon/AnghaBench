
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dmic_ctl; int * input_pins; } ;


 int VENDOR_CHIPIO_DMIC_CTL_SET ;
 int VENDOR_CHIPIO_DMIC_MCLK_SET ;
 int VENDOR_CHIPIO_DMIC_PIN_SET ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void ca0132_init_dmic(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 u8 val;
 val = 0x01;
 snd_hda_codec_write(codec, spec->input_pins[0], 0,
       VENDOR_CHIPIO_DMIC_MCLK_SET, val);







 val = 0x83;
 snd_hda_codec_write(codec, spec->input_pins[0], 0,
       VENDOR_CHIPIO_DMIC_PIN_SET, val);
 val = 0x23;

 spec->dmic_ctl = val;
 snd_hda_codec_write(codec, spec->input_pins[0], 0,
       VENDOR_CHIPIO_DMIC_CTL_SET, val);
}
