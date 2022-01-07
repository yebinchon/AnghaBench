
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct wm8350* control_data; } ;


 int WM8350_DAC_MUTE ;
 int WM8350_DAC_MUTE_ENA ;
 int wm8350_clear_bits (struct wm8350*,int ,int ) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 struct wm8350 *wm8350 = codec->control_data;

 if (mute)
  wm8350_set_bits(wm8350, WM8350_DAC_MUTE, WM8350_DAC_MUTE_ENA);
 else
  wm8350_clear_bits(wm8350, WM8350_DAC_MUTE, WM8350_DAC_MUTE_ENA);
 return 0;
}
