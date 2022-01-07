
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_ops {int set_clkdiv; int set_fmt; int hw_params; int trigger; } ;
struct snd_soc_dai {int resume; int suspend; struct snd_soc_dai_ops* ops; } ;


 int s3c2412_i2s_hw_params ;
 int s3c2412_i2s_resume ;
 int s3c2412_i2s_set_clkdiv ;
 int s3c2412_i2s_set_fmt ;
 int s3c2412_i2s_suspend ;
 int s3c2412_i2s_trigger ;
 int snd_soc_register_dai (struct snd_soc_dai*) ;

int s3c_i2sv2_register_dai(struct snd_soc_dai *dai)
{
 struct snd_soc_dai_ops *ops = dai->ops;

 ops->trigger = s3c2412_i2s_trigger;
 ops->hw_params = s3c2412_i2s_hw_params;
 ops->set_fmt = s3c2412_i2s_set_fmt;
 ops->set_clkdiv = s3c2412_i2s_set_clkdiv;

 dai->suspend = s3c2412_i2s_suspend;
 dai->resume = s3c2412_i2s_resume;

 return snd_soc_register_dai(dai);
}
