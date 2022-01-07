
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_priv {unsigned int sysclk; } ;
struct snd_soc_dai {size_t id; } ;


 struct ssi_priv* ssi_cpu_data ;

__attribute__((used)) static int ssi_set_sysclk(struct snd_soc_dai *cpu_dai, int clk_id,
     unsigned int freq, int dir)
{
 struct ssi_priv *ssi = &ssi_cpu_data[cpu_dai->id];

 ssi->sysclk = freq;

 return 0;
}
