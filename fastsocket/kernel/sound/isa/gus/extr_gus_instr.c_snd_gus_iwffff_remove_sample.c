
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mem_alloc; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;
struct TYPE_4__ {int memory; } ;
struct iwffff_wave {int format; TYPE_2__ address; } ;


 int IWFFFF_WAVE_ROM ;
 int snd_gf1_mem_free (int *,int ) ;

int snd_gus_iwffff_remove_sample(void *private_data, struct iwffff_wave *wave,
     int atomic)
{
 struct snd_gus_card *gus = private_data;

 if (wave->format & IWFFFF_WAVE_ROM)
  return 0;
 return snd_gf1_mem_free(&gus->gf1.mem_alloc, wave->address.memory);
}
