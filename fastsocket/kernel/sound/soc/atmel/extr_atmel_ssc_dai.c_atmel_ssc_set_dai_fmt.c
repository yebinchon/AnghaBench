
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; } ;
struct atmel_ssc_info {unsigned int daifmt; } ;


 struct atmel_ssc_info* ssc_info ;

__attribute__((used)) static int atmel_ssc_set_dai_fmt(struct snd_soc_dai *cpu_dai,
  unsigned int fmt)
{
 struct atmel_ssc_info *ssc_p = &ssc_info[cpu_dai->id];

 ssc_p->daifmt = fmt;
 return 0;
}
