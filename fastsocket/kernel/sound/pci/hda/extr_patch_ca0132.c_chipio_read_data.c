
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int curr_chip_addx; } ;


 int EIO ;
 int VENDOR_CHIPIO_HIC_POST_READ ;
 int VENDOR_CHIPIO_HIC_READ_DATA ;
 int VENDOR_CHIPIO_STATUS ;
 int WIDGET_CHIP_CTRL ;
 int chipio_send (struct hda_codec*,int ,int ) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static int chipio_read_data(struct hda_codec *codec, unsigned int *data)
{
 struct ca0132_spec *spec = codec->spec;
 int res;


 res = chipio_send(codec, VENDOR_CHIPIO_HIC_POST_READ, 0);

 if (res != -EIO) {

  res = chipio_send(codec, VENDOR_CHIPIO_STATUS, 0);
 }

 if (res != -EIO) {

  *data = snd_hda_codec_read(codec, WIDGET_CHIP_CTRL, 0,
        VENDOR_CHIPIO_HIC_READ_DATA,
        0);
 }



 spec->curr_chip_addx = (res != -EIO) ?
     (spec->curr_chip_addx + 4) : ~0UL;
 return res;
}
