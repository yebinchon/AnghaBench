
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int snd_soc_register_dai (struct snd_soc_dai*) ;
 int snd_soc_unregister_dai (struct snd_soc_dai*) ;

int snd_soc_register_dais(struct snd_soc_dai *dai, size_t count)
{
 int i, ret;

 for (i = 0; i < count; i++) {
  ret = snd_soc_register_dai(&dai[i]);
  if (ret != 0)
   goto err;
 }

 return 0;

err:
 for (i--; i >= 0; i--)
  snd_soc_unregister_dai(&dai[i]);

 return ret;
}
