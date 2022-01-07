
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct snd_soc_codec {struct wm8350* control_data; } ;


 int wm8350_reg_write (struct wm8350*,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8350_codec_write(struct snd_soc_codec *codec, unsigned int reg,
         unsigned int value)
{
 struct wm8350 *wm8350 = codec->control_data;
 return wm8350_reg_write(wm8350, reg, value);
}
