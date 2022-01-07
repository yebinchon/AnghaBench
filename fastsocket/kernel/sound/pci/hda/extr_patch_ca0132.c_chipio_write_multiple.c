
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int chipio_write_address (struct hda_codec*,int ) ;
 int chipio_write_data_multiple (struct hda_codec*,int const*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int chipio_write_multiple(struct hda_codec *codec,
     u32 chip_addx,
     const u32 *data,
     unsigned int count)
{
 struct ca0132_spec *spec = codec->spec;
 int status;

 mutex_lock(&spec->chipio_mutex);
 status = chipio_write_address(codec, chip_addx);
 if (status < 0)
  goto error;

 status = chipio_write_data_multiple(codec, data, count);
error:
 mutex_unlock(&spec->chipio_mutex);

 return status;
}
