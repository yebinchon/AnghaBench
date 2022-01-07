
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int VENDOR_CHIPIO_8051_ADDRESS_LOW ;
 int VENDOR_CHIPIO_PLL_PMU_WRITE ;
 int WIDGET_CHIP_CTRL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void chipio_enable_clocks(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 mutex_lock(&spec->chipio_mutex);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 0);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xff);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 5);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0x0b);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_8051_ADDRESS_LOW, 6);
 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PLL_PMU_WRITE, 0xff);
 mutex_unlock(&spec->chipio_mutex);
}
