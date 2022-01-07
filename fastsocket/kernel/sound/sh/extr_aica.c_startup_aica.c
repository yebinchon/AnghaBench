
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_aica {int channel; } ;
struct aica_channel {int dummy; } ;


 int AICA_CHANNEL0_CONTROL_OFFSET ;
 int aica_chn_start () ;
 int spu_memload (int ,int ,int) ;

__attribute__((used)) static void startup_aica(struct snd_card_aica *dreamcastcard)
{
 spu_memload(AICA_CHANNEL0_CONTROL_OFFSET,
      dreamcastcard->channel, sizeof(struct aica_channel));
 aica_chn_start();
}
