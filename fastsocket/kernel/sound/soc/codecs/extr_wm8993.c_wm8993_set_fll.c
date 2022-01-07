
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8993_priv {unsigned int fll_fref; unsigned int fll_fout; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dev; struct wm8993_priv* private_data; } ;
struct _fll_div {int k; int fll_outdiv; int fll_fratio; int n; int fll_clk_ref_div; } ;


 int EINVAL ;

 int WM8993_FLL_CLK_REF_DIV_MASK ;
 int WM8993_FLL_CLK_REF_DIV_SHIFT ;
 int WM8993_FLL_CLK_SRC_MASK ;
 int WM8993_FLL_CONTROL_1 ;
 int WM8993_FLL_CONTROL_2 ;
 int WM8993_FLL_CONTROL_3 ;
 int WM8993_FLL_CONTROL_4 ;
 int WM8993_FLL_CONTROL_5 ;
 int WM8993_FLL_ENA ;
 int WM8993_FLL_FRAC_MASK ;
 int WM8993_FLL_FRATIO_SHIFT ;


 int WM8993_FLL_N_MASK ;
 int WM8993_FLL_N_SHIFT ;
 int WM8993_FLL_OUTDIV_SHIFT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int fll_factors (struct _fll_div*,unsigned int,unsigned int) ;
 int wm8993_read (struct snd_soc_codec*,int ) ;
 int wm8993_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8993_set_fll(struct snd_soc_dai *dai, int fll_id,
     unsigned int Fref, unsigned int Fout)
{
 struct snd_soc_codec *codec = dai->codec;
 struct wm8993_priv *wm8993 = codec->private_data;
 u16 reg1, reg4, reg5;
 struct _fll_div fll_div;
 int ret;


 if (Fref == wm8993->fll_fref && Fout == wm8993->fll_fout)
  return 0;


 if (Fout == 0) {
  dev_dbg(codec->dev, "FLL disabled\n");
  wm8993->fll_fref = 0;
  wm8993->fll_fout = 0;

  reg1 = wm8993_read(codec, WM8993_FLL_CONTROL_1);
  reg1 &= ~WM8993_FLL_ENA;
  wm8993_write(codec, WM8993_FLL_CONTROL_1, reg1);

  return 0;
 }

 ret = fll_factors(&fll_div, Fref, Fout);
 if (ret != 0)
  return ret;

 reg5 = wm8993_read(codec, WM8993_FLL_CONTROL_5);
 reg5 &= ~WM8993_FLL_CLK_SRC_MASK;

 switch (fll_id) {
 case 128:
  break;

 case 129:
  reg5 |= 1;
  break;

 case 130:
  reg5 |= 2;
  break;

 default:
  dev_err(codec->dev, "Unknown FLL ID %d\n", fll_id);
  return -EINVAL;
 }



 reg1 = wm8993_read(codec, WM8993_FLL_CONTROL_1);
 reg1 &= ~WM8993_FLL_ENA;
 wm8993_write(codec, WM8993_FLL_CONTROL_1, reg1);


 if (fll_div.k)
  reg1 |= WM8993_FLL_FRAC_MASK;
 else
  reg1 &= ~WM8993_FLL_FRAC_MASK;
 wm8993_write(codec, WM8993_FLL_CONTROL_1, reg1);

 wm8993_write(codec, WM8993_FLL_CONTROL_2,
       (fll_div.fll_outdiv << WM8993_FLL_OUTDIV_SHIFT) |
       (fll_div.fll_fratio << WM8993_FLL_FRATIO_SHIFT));
 wm8993_write(codec, WM8993_FLL_CONTROL_3, fll_div.k);

 reg4 = wm8993_read(codec, WM8993_FLL_CONTROL_4);
 reg4 &= ~WM8993_FLL_N_MASK;
 reg4 |= fll_div.n << WM8993_FLL_N_SHIFT;
 wm8993_write(codec, WM8993_FLL_CONTROL_4, reg4);

 reg5 &= ~WM8993_FLL_CLK_REF_DIV_MASK;
 reg5 |= fll_div.fll_clk_ref_div << WM8993_FLL_CLK_REF_DIV_SHIFT;
 wm8993_write(codec, WM8993_FLL_CONTROL_5, reg5);


 wm8993_write(codec, WM8993_FLL_CONTROL_1, reg1 | WM8993_FLL_ENA);

 dev_dbg(codec->dev, "FLL enabled at %dHz->%dHz\n", Fref, Fout);

 wm8993->fll_fref = Fref;
 wm8993->fll_fout = Fout;

 return 0;
}
