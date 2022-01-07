
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_I2S ;

__attribute__((used)) static int fsl_ssi_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int format)
{
 return (format == SND_SOC_DAIFMT_I2S) ? 0 : -EINVAL;
}
