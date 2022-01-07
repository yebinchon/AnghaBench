
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wm9081_priv {int sysclk_source; int mclk_rate; int sysclk_rate; int bclk; int fs; int master; } ;
struct snd_soc_codec {int dev; struct wm9081_priv* private_data; } ;
struct TYPE_3__ {int ratio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 unsigned int WM9081_CLK_SRC_SEL ;
 int WM9081_CLOCK_CONTROL_1 ;
 int WM9081_CLOCK_CONTROL_3 ;
 unsigned int WM9081_MCLKDIV2 ;


 TYPE_1__* clk_sys_rates ;
 int dev_dbg (int ,char*,int) ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,unsigned int) ;
 int wm9081_set_fll (struct snd_soc_codec*,int const,int,int) ;

__attribute__((used)) static int configure_clock(struct snd_soc_codec *codec)
{
 struct wm9081_priv *wm9081 = codec->private_data;
 int new_sysclk, i, target;
 unsigned int reg;
 int ret = 0;
 int mclkdiv = 0;
 int fll = 0;

 switch (wm9081->sysclk_source) {
 case 128:
  if (wm9081->mclk_rate > 12225000) {
   mclkdiv = 1;
   wm9081->sysclk_rate = wm9081->mclk_rate / 2;
  } else {
   wm9081->sysclk_rate = wm9081->mclk_rate;
  }
  wm9081_set_fll(codec, 129, 0, 0);
  break;

 case 129:







  if (wm9081->master && wm9081->bclk) {



   for (i = 0; i < ARRAY_SIZE(clk_sys_rates); i++) {
    target = wm9081->fs * clk_sys_rates[i].ratio;
    new_sysclk = target;
    if (target >= wm9081->bclk &&
        target > 3000000)
     break;
   }

   if (i == ARRAY_SIZE(clk_sys_rates))
    return -EINVAL;

  } else if (wm9081->fs) {
   for (i = 0; i < ARRAY_SIZE(clk_sys_rates); i++) {
    new_sysclk = clk_sys_rates[i].ratio
     * wm9081->fs;
    if (new_sysclk > 3000000)
     break;
   }

   if (i == ARRAY_SIZE(clk_sys_rates))
    return -EINVAL;

  } else {
   new_sysclk = 12288000;
  }

  ret = wm9081_set_fll(codec, 129,
         wm9081->mclk_rate, new_sysclk);
  if (ret == 0) {
   wm9081->sysclk_rate = new_sysclk;


   fll = 1;
  } else {
   wm9081->sysclk_rate = wm9081->mclk_rate;
  }
  break;

 default:
  return -EINVAL;
 }

 reg = snd_soc_read(codec, WM9081_CLOCK_CONTROL_1);
 if (mclkdiv)
  reg |= WM9081_MCLKDIV2;
 else
  reg &= ~WM9081_MCLKDIV2;
 snd_soc_write(codec, WM9081_CLOCK_CONTROL_1, reg);

 reg = snd_soc_read(codec, WM9081_CLOCK_CONTROL_3);
 if (fll)
  reg |= WM9081_CLK_SRC_SEL;
 else
  reg &= ~WM9081_CLK_SRC_SEL;
 snd_soc_write(codec, WM9081_CLOCK_CONTROL_3, reg);

 dev_dbg(codec->dev, "CLK_SYS is %dHz\n", wm9081->sysclk_rate);

 return ret;
}
