
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;

__attribute__((used)) static int fsl_ssi_set_sysclk(struct snd_soc_dai *cpu_dai,
         int clk_id, unsigned int freq, int dir)
{

 return (dir == SND_SOC_CLOCK_IN) ? 0 : -EINVAL;
}
