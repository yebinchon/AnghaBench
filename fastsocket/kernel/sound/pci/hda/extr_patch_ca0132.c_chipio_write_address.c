
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {unsigned int curr_chip_addx; } ;


 int EIO ;
 int VENDOR_CHIPIO_ADDRESS_HIGH ;
 int VENDOR_CHIPIO_ADDRESS_LOW ;
 int chipio_send (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static int chipio_write_address(struct hda_codec *codec,
    unsigned int chip_addx)
{
 struct ca0132_spec *spec = codec->spec;
 int res;

 if (spec->curr_chip_addx == chip_addx)
   return 0;


 res = chipio_send(codec, VENDOR_CHIPIO_ADDRESS_LOW,
     chip_addx & 0xffff);

 if (res != -EIO) {

  res = chipio_send(codec, VENDOR_CHIPIO_ADDRESS_HIGH,
      chip_addx >> 16);
 }

 spec->curr_chip_addx = (res < 0) ? ~0UL : chip_addx;

 return res;
}
