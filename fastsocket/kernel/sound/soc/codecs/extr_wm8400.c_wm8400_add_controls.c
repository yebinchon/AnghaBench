
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int wm8400_snd_controls ;

__attribute__((used)) static int wm8400_add_controls(struct snd_soc_codec *codec)
{
 return snd_soc_add_controls(codec, wm8400_snd_controls,
    ARRAY_SIZE(wm8400_snd_controls));
}
