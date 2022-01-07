
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int * dev; struct i2c_client* control_data; scalar_t__ hw_write; } ;
struct wm8940_priv {struct snd_soc_codec codec; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
typedef scalar_t__ hw_write_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SND_SOC_I2C ;
 scalar_t__ i2c_master_send ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8940_priv*) ;
 struct wm8940_priv* kzalloc (int,int ) ;
 int wm8940_register (struct wm8940_priv*,int ) ;

__attribute__((used)) static int wm8940_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8940_priv *wm8940;
 struct snd_soc_codec *codec;

 wm8940 = kzalloc(sizeof *wm8940, GFP_KERNEL);
 if (wm8940 == ((void*)0))
  return -ENOMEM;

 codec = &wm8940->codec;
 codec->hw_write = (hw_write_t)i2c_master_send;
 i2c_set_clientdata(i2c, wm8940);
 codec->control_data = i2c;
 codec->dev = &i2c->dev;

 return wm8940_register(wm8940, SND_SOC_I2C);
}
