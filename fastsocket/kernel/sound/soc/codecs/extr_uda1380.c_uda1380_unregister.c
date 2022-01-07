
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {TYPE_1__* dev; } ;
struct uda1380_priv {struct snd_soc_codec codec; } ;
struct uda1380_platform_data {int gpio_power; int gpio_reset; } ;
struct TYPE_2__ {struct uda1380_platform_data* platform_data; } ;


 int ARRAY_SIZE (int ) ;
 int gpio_free (int ) ;
 int gpio_set_value (int ,int ) ;
 int kfree (struct uda1380_priv*) ;
 int snd_soc_unregister_codec (struct snd_soc_codec*) ;
 int snd_soc_unregister_dais (int ,int ) ;
 int * uda1380_codec ;
 int uda1380_dai ;

__attribute__((used)) static void uda1380_unregister(struct uda1380_priv *uda1380)
{
 struct snd_soc_codec *codec = &uda1380->codec;
 struct uda1380_platform_data *pdata = codec->dev->platform_data;

 snd_soc_unregister_dais(uda1380_dai, ARRAY_SIZE(uda1380_dai));
 snd_soc_unregister_codec(&uda1380->codec);

 gpio_set_value(pdata->gpio_power, 0);
 gpio_free(pdata->gpio_reset);
 gpio_free(pdata->gpio_power);

 kfree(uda1380);
 uda1380_codec = ((void*)0);
}
