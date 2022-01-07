
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct wm8350* control_data; } ;


 int WM8350_CLOCK_CONTROL_1 ;
 int WM8350_CLOCK_CONTROL_2 ;
 int WM8350_FLL_CLK_SRC_MASK ;
 int WM8350_FLL_CONTROL_4 ;
 int WM8350_MCLK_DIR ;
 int WM8350_MCLK_DIR_OUT ;
 int WM8350_MCLK_SEL ;





 int wm8350_clear_bits (struct wm8350*,int ,int ) ;
 int wm8350_codec_read (struct snd_soc_codec*,int ) ;
 int wm8350_codec_write (struct snd_soc_codec*,int ,int) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_set_dai_sysclk(struct snd_soc_dai *codec_dai,
     int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct wm8350 *wm8350 = codec->control_data;
 u16 fll_4;

 switch (clk_id) {
 case 132:
  wm8350_clear_bits(wm8350, WM8350_CLOCK_CONTROL_1,
      WM8350_MCLK_SEL);
  break;
 case 128:
 case 129:
 case 130:
 case 131:
  wm8350_set_bits(wm8350, WM8350_CLOCK_CONTROL_1,
    WM8350_MCLK_SEL);
  fll_4 = wm8350_codec_read(codec, WM8350_FLL_CONTROL_4) &
      ~WM8350_FLL_CLK_SRC_MASK;
  wm8350_codec_write(codec, WM8350_FLL_CONTROL_4, fll_4 | clk_id);
  break;
 }


 if (dir == WM8350_MCLK_DIR_OUT)
  wm8350_set_bits(wm8350, WM8350_CLOCK_CONTROL_2,
    WM8350_MCLK_DIR);
 else
  wm8350_clear_bits(wm8350, WM8350_CLOCK_CONTROL_2,
      WM8350_MCLK_DIR);

 return 0;
}
