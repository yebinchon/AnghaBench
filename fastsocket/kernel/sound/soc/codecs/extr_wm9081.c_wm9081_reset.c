
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int WM9081_SOFTWARE_RESET ;
 int snd_soc_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int wm9081_reset(struct snd_soc_codec *codec)
{
 return snd_soc_write(codec, WM9081_SOFTWARE_RESET, 0);
}
