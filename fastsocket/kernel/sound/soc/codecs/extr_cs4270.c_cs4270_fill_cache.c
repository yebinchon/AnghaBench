
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int dev; struct i2c_client* control_data; int * reg_cache; } ;
struct i2c_client {int addr; } ;
typedef scalar_t__ s32 ;


 int CS4270_FIRSTREG ;
 int CS4270_I2C_INCR ;
 scalar_t__ CS4270_NUMREGS ;
 int EIO ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ i2c_smbus_read_i2c_block_data (struct i2c_client*,int,scalar_t__,int *) ;

__attribute__((used)) static int cs4270_fill_cache(struct snd_soc_codec *codec)
{
 u8 *cache = codec->reg_cache;
 struct i2c_client *i2c_client = codec->control_data;
 s32 length;

 length = i2c_smbus_read_i2c_block_data(i2c_client,
  CS4270_FIRSTREG | CS4270_I2C_INCR, CS4270_NUMREGS, cache);

 if (length != CS4270_NUMREGS) {
  dev_err(codec->dev, "i2c read failure, addr=0x%x\n",
         i2c_client->addr);
  return -EIO;
 }

 return 0;
}
