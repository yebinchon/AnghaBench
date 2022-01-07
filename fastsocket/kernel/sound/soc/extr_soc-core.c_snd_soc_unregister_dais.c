
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int snd_soc_unregister_dai (struct snd_soc_dai*) ;

void snd_soc_unregister_dais(struct snd_soc_dai *dai, size_t count)
{
 int i;

 for (i = 0; i < count; i++)
  snd_soc_unregister_dai(&dai[i]);
}
