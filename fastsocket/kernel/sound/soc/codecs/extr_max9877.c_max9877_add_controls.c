
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int max9877_controls ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;

int max9877_add_controls(struct snd_soc_codec *codec)
{
 return snd_soc_add_controls(codec, max9877_controls,
   ARRAY_SIZE(max9877_controls));
}
