
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_dai {int id; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct TYPE_3__ {int active; } ;
struct TYPE_4__ {TYPE_1__ playback; } ;


 int WM8753_DAC ;
 size_t WM8753_DAI_HIFI ;
 size_t WM8753_DAI_VOICE ;
 TYPE_2__* wm8753_dai ;
 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 mute_reg = wm8753_read_reg_cache(codec, WM8753_DAC) & 0xfff7;



 if (mute && dai->id == 1) {
  if (!wm8753_dai[WM8753_DAI_VOICE].playback.active ||
   !wm8753_dai[WM8753_DAI_HIFI].playback.active)
   wm8753_write(codec, WM8753_DAC, mute_reg | 0x8);
 } else {
  if (mute)
   wm8753_write(codec, WM8753_DAC, mute_reg | 0x8);
  else
   wm8753_write(codec, WM8753_DAC, mute_reg);
 }

 return 0;
}
