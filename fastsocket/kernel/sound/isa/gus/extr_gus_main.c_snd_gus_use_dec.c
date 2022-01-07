
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_gus_card {TYPE_1__* card; } ;
struct TYPE_2__ {int module; } ;


 int module_put (int ) ;

void snd_gus_use_dec(struct snd_gus_card * gus)
{
 module_put(gus->card->module);
}
