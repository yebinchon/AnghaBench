
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {int codec; } ;
struct i2c_client {int dummy; } ;


 int SND_SOC_BIAS_OFF ;
 struct wm8993_priv* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct wm8993_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int wm8993_dai ;
 int wm8993_set_bias_level (int *,int ) ;

__attribute__((used)) static int wm8993_i2c_remove(struct i2c_client *client)
{
 struct wm8993_priv *wm8993 = i2c_get_clientdata(client);

 snd_soc_unregister_codec(&wm8993->codec);
 snd_soc_unregister_dai(&wm8993_dai);

 wm8993_set_bias_level(&wm8993->codec, SND_SOC_BIAS_OFF);
 kfree(wm8993);

 return 0;
}
