
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct _pll_div {int n; int k; scalar_t__ div2; } ;


 int WM8990_CLOCKING_2 ;
 int WM8990_PLL1 ;
 int WM8990_PLL2 ;
 int WM8990_PLL3 ;
 int WM8990_PLL_ENA ;
 int WM8990_POWER_MANAGEMENT_2 ;
 int WM8990_PRESCALE ;
 int WM8990_SDM ;
 int WM8990_SYSCLK_SRC ;
 int pll_factors (struct _pll_div*,unsigned int,unsigned int) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8990_set_dai_pll(struct snd_soc_dai *codec_dai,
  int pll_id, unsigned int freq_in, unsigned int freq_out)
{
 u16 reg;
 struct snd_soc_codec *codec = codec_dai->codec;
 struct _pll_div pll_div;

 if (freq_in && freq_out) {
  pll_factors(&pll_div, freq_out * 4, freq_in);


  reg = snd_soc_read(codec, WM8990_POWER_MANAGEMENT_2);
  reg |= WM8990_PLL_ENA;
  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_2, reg);


  reg = snd_soc_read(codec, WM8990_CLOCKING_2);
  snd_soc_write(codec, WM8990_CLOCKING_2, reg | WM8990_SYSCLK_SRC);


  snd_soc_write(codec, WM8990_PLL1, pll_div.n | WM8990_SDM |
   (pll_div.div2?WM8990_PRESCALE:0));
  snd_soc_write(codec, WM8990_PLL2, (u8)(pll_div.k>>8));
  snd_soc_write(codec, WM8990_PLL3, (u8)(pll_div.k & 0xFF));
 } else {

  reg = snd_soc_read(codec, WM8990_POWER_MANAGEMENT_2);
  reg &= ~WM8990_PLL_ENA;
  snd_soc_write(codec, WM8990_POWER_MANAGEMENT_2, reg);
 }
 return 0;
}
