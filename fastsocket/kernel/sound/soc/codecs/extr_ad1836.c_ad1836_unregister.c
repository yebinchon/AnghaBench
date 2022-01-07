
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1836_priv {int codec; } ;


 int * ad1836_codec ;
 int ad1836_dai ;
 int kfree (struct ad1836_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;

__attribute__((used)) static void ad1836_unregister(struct ad1836_priv *ad1836)
{
 snd_soc_unregister_dai(&ad1836_dai);
 snd_soc_unregister_codec(&ad1836->codec);
 kfree(ad1836);
 ad1836_codec = ((void*)0);
}
