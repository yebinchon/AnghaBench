
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {char* name; int num_dai; unsigned int (* read ) (struct snd_soc_codec*,int ) ;int (* write ) (struct snd_soc_codec*,int ,unsigned int) ;int reg_cache_size; int reg_cache; struct i2c_client* control_data; struct cs4270_private* private_data; TYPE_1__* dai; int owner; int * dev; int dapm_paths; int dapm_widgets; int mutex; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; } ;
struct cs4270_private {int reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int * dev; } ;


 int CS4270_CHIPID ;
 int CS4270_MUTE ;
 unsigned int CS4270_MUTE_AUTO ;
 int CS4270_NUMREGS ;
 int CS4270_TRANS ;
 unsigned int CS4270_TRANS_SOFT ;
 unsigned int CS4270_TRANS_ZERO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 struct snd_soc_codec* cs4270_codec ;
 TYPE_1__ cs4270_dai ;
 int cs4270_fill_cache (struct snd_soc_codec*) ;
 int cs4270_i2c_write (struct snd_soc_codec*,int ,unsigned int) ;
 unsigned int cs4270_read_reg_cache (struct snd_soc_codec*,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct cs4270_private*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int kfree (struct cs4270_private*) ;
 struct cs4270_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_soc_register_dai (TYPE_1__*) ;

__attribute__((used)) static int cs4270_i2c_probe(struct i2c_client *i2c_client,
 const struct i2c_device_id *id)
{
 struct snd_soc_codec *codec;
 struct cs4270_private *cs4270;
 unsigned int reg;
 int ret;




 if (cs4270_codec) {
  dev_err(&i2c_client->dev, "ignoring CS4270 at addr %X\n",
         i2c_client->addr);
  dev_err(&i2c_client->dev, "only one per board allowed\n");

  return -ENODEV;
 }



 ret = i2c_smbus_read_byte_data(i2c_client, CS4270_CHIPID);
 if (ret < 0) {
  dev_err(&i2c_client->dev, "failed to read i2c at addr %X\n",
         i2c_client->addr);
  return ret;
 }

 if ((ret & 0xF0) != 0xC0) {
  dev_err(&i2c_client->dev, "device at addr %X is not a CS4270\n",
         i2c_client->addr);
  return -ENODEV;
 }

 dev_info(&i2c_client->dev, "found device at i2c address %X\n",
  i2c_client->addr);
 dev_info(&i2c_client->dev, "hardware revision %X\n", ret & 0xF);



 cs4270 = kzalloc(sizeof(struct cs4270_private), GFP_KERNEL);
 if (!cs4270) {
  dev_err(&i2c_client->dev, "could not allocate codec\n");
  return -ENOMEM;
 }
 codec = &cs4270->codec;

 mutex_init(&codec->mutex);
 INIT_LIST_HEAD(&codec->dapm_widgets);
 INIT_LIST_HEAD(&codec->dapm_paths);

 codec->dev = &i2c_client->dev;
 codec->name = "CS4270";
 codec->owner = THIS_MODULE;
 codec->dai = &cs4270_dai;
 codec->num_dai = 1;
 codec->private_data = cs4270;
 codec->control_data = i2c_client;
 codec->read = cs4270_read_reg_cache;
 codec->write = cs4270_i2c_write;
 codec->reg_cache = cs4270->reg_cache;
 codec->reg_cache_size = CS4270_NUMREGS;



 ret = cs4270_fill_cache(codec);
 if (ret < 0) {
  dev_err(&i2c_client->dev, "failed to fill register cache\n");
  goto error_free_codec;
 }







 reg = cs4270_read_reg_cache(codec, CS4270_MUTE);
 reg &= ~CS4270_MUTE_AUTO;
 ret = cs4270_i2c_write(codec, CS4270_MUTE, reg);
 if (ret < 0) {
  dev_err(&i2c_client->dev, "i2c write failed\n");
  return ret;
 }







 reg = cs4270_read_reg_cache(codec, CS4270_TRANS);
 reg &= ~(CS4270_TRANS_SOFT | CS4270_TRANS_ZERO);
 ret = cs4270_i2c_write(codec, CS4270_TRANS, reg);
 if (ret < 0) {
  dev_err(&i2c_client->dev, "i2c write failed\n");
  return ret;
 }






 cs4270_dai.dev = &i2c_client->dev;





 cs4270_codec = codec;
 ret = snd_soc_register_dai(&cs4270_dai);
 if (ret < 0) {
  dev_err(&i2c_client->dev, "failed to register DAIe\n");
  goto error_free_codec;
 }

 i2c_set_clientdata(i2c_client, cs4270);

 return 0;

error_free_codec:
 kfree(cs4270);
 cs4270_codec = ((void*)0);
 cs4270_dai.dev = ((void*)0);

 return ret;
}
