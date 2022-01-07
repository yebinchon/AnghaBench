
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {unsigned int* reg_cache; } ;
struct snd_soc_codec {struct wm8350* control_data; } ;



__attribute__((used)) static unsigned int wm8350_codec_cache_read(struct snd_soc_codec *codec,
         unsigned int reg)
{
 struct wm8350 *wm8350 = codec->control_data;
 return wm8350->reg_cache[reg];
}
