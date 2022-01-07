
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; } ;
struct atmel_ssc_info {int cmr_div; int tcmr_period; int rcmr_period; } ;





 int EBUSY ;
 int EINVAL ;
 struct atmel_ssc_info* ssc_info ;

__attribute__((used)) static int atmel_ssc_set_dai_clkdiv(struct snd_soc_dai *cpu_dai,
 int div_id, int div)
{
 struct atmel_ssc_info *ssc_p = &ssc_info[cpu_dai->id];

 switch (div_id) {
 case 130:





  if (ssc_p->cmr_div == 0)
   ssc_p->cmr_div = div;
  else
   if (div != ssc_p->cmr_div)
    return -EBUSY;
  break;

 case 128:
  ssc_p->tcmr_period = div;
  break;

 case 129:
  ssc_p->rcmr_period = div;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
