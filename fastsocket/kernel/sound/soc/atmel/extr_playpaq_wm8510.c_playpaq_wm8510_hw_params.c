
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssc_device {int dummy; } ;
struct ssc_clock_data {unsigned int cmr_div; unsigned int period; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {struct at32_ssc_info* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct at32_ssc_info {struct ssc_device* ssc; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;


 int AT32_SSC_CMR_DIV ;
 int AT32_SSC_TCMR_PERIOD ;
 int CODEC_CLK ;
 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int WM8510_BCLKDIV ;
 unsigned int WM8510_BCLKDIV_8 ;
 int WM8510_MCLKDIV ;
 unsigned int WM8510_MCLKDIV_12 ;
 unsigned int WM8510_MCLKDIV_2 ;
 unsigned int WM8510_MCLKDIV_4 ;
 unsigned int WM8510_MCLKDIV_6 ;
 unsigned int WM8510_MCLKDIV_8 ;
 int clk_get_rate (int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct ssc_clock_data playpaq_wm8510_calc_ssc_clock (struct snd_pcm_hw_params*,struct snd_soc_dai*) ;
 int pr_debug (char*,unsigned int,unsigned int,...) ;
 int pr_warning (char*,...) ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,unsigned int) ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,unsigned int const) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,unsigned int) ;

__attribute__((used)) static int playpaq_wm8510_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct at32_ssc_info *ssc_p = cpu_dai->private_data;
 struct ssc_device *ssc = ssc_p->ssc;
 unsigned int pll_out = 0, bclk = 0, mclk_div = 0;
 int ret;






 const unsigned int fmt = (SND_SOC_DAIFMT_I2S |
      SND_SOC_DAIFMT_NB_NF |
      SND_SOC_DAIFMT_CBM_CFM);







 if (ssc == ((void*)0)) {
  pr_warning("playpaq_wm8510_hw_params: ssc is NULL!\n");
  return -EINVAL;
 }





 switch (params_rate(params)) {
 case 48000:
  pll_out = 24576000;
  mclk_div = WM8510_MCLKDIV_2;
  bclk = WM8510_BCLKDIV_8;
  break;

 case 44100:
  pll_out = 22579200;
  mclk_div = WM8510_MCLKDIV_2;
  bclk = WM8510_BCLKDIV_8;
  break;

 case 22050:
  pll_out = 22579200;
  mclk_div = WM8510_MCLKDIV_4;
  bclk = WM8510_BCLKDIV_8;
  break;

 case 16000:
  pll_out = 24576000;
  mclk_div = WM8510_MCLKDIV_6;
  bclk = WM8510_BCLKDIV_8;
  break;

 case 11025:
  pll_out = 22579200;
  mclk_div = WM8510_MCLKDIV_8;
  bclk = WM8510_BCLKDIV_8;
  break;

 case 8000:
  pll_out = 24576000;
  mclk_div = WM8510_MCLKDIV_12;
  bclk = WM8510_BCLKDIV_8;
  break;

 default:
  pr_warning("playpaq_wm8510: Unsupported sample rate %d\n",
      params_rate(params));
  return -EINVAL;
 }





 ret = snd_soc_dai_set_fmt(codec_dai, fmt);
 if (ret < 0) {
  pr_warning("playpaq_wm8510: "
      "Failed to set CODEC DAI format (%d)\n",
      ret);
  return ret;
 }
 ret = snd_soc_dai_set_fmt(cpu_dai, fmt);
 if (ret < 0) {
  pr_warning("playpaq_wm8510: "
      "Failed to set CPU DAI format (%d)\n",
      ret);
  return ret;
 }
 pr_debug("playpaq_wm8510: "
   "pll_in = %ld, pll_out = %u, bclk = %x, mclk = %x\n",
   clk_get_rate(CODEC_CLK), pll_out, bclk, mclk_div);



 ret = snd_soc_dai_set_clkdiv(codec_dai, WM8510_BCLKDIV, bclk);
 if (ret < 0) {
  pr_warning
      ("playpaq_wm8510: Failed to set CODEC DAI BCLKDIV (%d)\n",
       ret);
  return ret;
 }



 ret = snd_soc_dai_set_pll(codec_dai, 0,
      clk_get_rate(CODEC_CLK), pll_out);
 if (ret < 0) {
  pr_warning("playpaq_wm8510: Failed to set CODEC DAI PLL (%d)\n",
      ret);
  return ret;
 }


 ret = snd_soc_dai_set_clkdiv(codec_dai, WM8510_MCLKDIV, mclk_div);
 if (ret < 0) {
  pr_warning("playpaq_wm8510: Failed to set CODEC MCLKDIV (%d)\n",
      ret);
  return ret;
 }


 return 0;
}
