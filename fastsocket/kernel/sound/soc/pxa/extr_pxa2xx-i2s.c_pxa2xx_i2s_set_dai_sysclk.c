
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int ENODEV ;
 int PXA2XX_I2S_SYSCLK ;

__attribute__((used)) static int pxa2xx_i2s_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
  int clk_id, unsigned int freq, int dir)
{
 if (clk_id != PXA2XX_I2S_SYSCLK)
  return -ENODEV;

 return 0;
}
