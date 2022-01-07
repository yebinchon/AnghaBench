
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {struct snd_korg1212* private_data; } ;
struct snd_korg1212 {size_t cardState; int * pcm; } ;


 int K1212_DEBUG_PRINTK (char*,int ) ;
 int * stateName ;

__attribute__((used)) static void snd_korg1212_free_pcm(struct snd_pcm *pcm)
{
        struct snd_korg1212 *korg1212 = pcm->private_data;

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_free_pcm [%s]\n",
      stateName[korg1212->cardState]);

        korg1212->pcm = ((void*)0);
}
