
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct TYPE_2__ {int pre_div; int n; int k; } ;


 int WM8974_CLOCK ;
 int WM8974_PLLK1 ;
 int WM8974_PLLK2 ;
 int WM8974_PLLK3 ;
 int WM8974_PLLN ;
 int WM8974_POWER1 ;
 TYPE_1__ pll_div ;
 int pll_factors (unsigned int,unsigned int) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8974_set_dai_pll(struct snd_soc_dai *codec_dai,
  int pll_id, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 if (freq_in == 0 || freq_out == 0) {

  reg = snd_soc_read(codec, WM8974_CLOCK);
  snd_soc_write(codec, WM8974_CLOCK, reg & 0x0ff);


  reg = snd_soc_read(codec, WM8974_POWER1);
  snd_soc_write(codec, WM8974_POWER1, reg & 0x1df);
  return 0;
 }

 pll_factors(freq_out*4, freq_in);

 snd_soc_write(codec, WM8974_PLLN, (pll_div.pre_div << 4) | pll_div.n);
 snd_soc_write(codec, WM8974_PLLK1, pll_div.k >> 18);
 snd_soc_write(codec, WM8974_PLLK2, (pll_div.k >> 9) & 0x1ff);
 snd_soc_write(codec, WM8974_PLLK3, pll_div.k & 0x1ff);
 reg = snd_soc_read(codec, WM8974_POWER1);
 snd_soc_write(codec, WM8974_POWER1, reg | 0x020);


 reg = snd_soc_read(codec, WM8974_CLOCK);
 snd_soc_write(codec, WM8974_CLOCK, reg | 0x100);

 return 0;
}
