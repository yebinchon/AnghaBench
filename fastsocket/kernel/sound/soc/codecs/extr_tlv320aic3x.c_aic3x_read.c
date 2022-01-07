
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {int control_data; } ;


 int aic3x_write_reg_cache (struct snd_soc_codec*,unsigned int,unsigned int) ;
 unsigned int i2c_smbus_read_byte_data (int ,unsigned int) ;

__attribute__((used)) static int aic3x_read(struct snd_soc_codec *codec, unsigned int reg,
        u8 *value)
{
 *value = reg & 0xff;

 value[0] = i2c_smbus_read_byte_data(codec->control_data, value[0]);

 aic3x_write_reg_cache(codec, reg, *value);
 return 0;
}
