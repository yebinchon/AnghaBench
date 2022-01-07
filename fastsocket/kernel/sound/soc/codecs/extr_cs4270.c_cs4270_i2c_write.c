
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; int dev; struct i2c_client* control_data; } ;
struct i2c_client {int dummy; } ;


 unsigned int CS4270_FIRSTREG ;
 unsigned int CS4270_LASTREG ;
 int EIO ;
 int dev_err (int ,char*) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,unsigned int,unsigned int) ;

__attribute__((used)) static int cs4270_i2c_write(struct snd_soc_codec *codec, unsigned int reg,
       unsigned int value)
{
 u8 *cache = codec->reg_cache;

 if ((reg < CS4270_FIRSTREG) || (reg > CS4270_LASTREG))
  return -EIO;


 if (cache[reg - CS4270_FIRSTREG] != value) {
  struct i2c_client *client = codec->control_data;
  if (i2c_smbus_write_byte_data(client, reg, value)) {
   dev_err(codec->dev, "i2c write failed\n");
   return -EIO;
  }


  cache[reg - CS4270_FIRSTREG] = value;
 }

 return 0;
}
