
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ client; } ;
struct snd_seq_port_subscribe {TYPE_1__ sender; } ;
struct snd_opl3 {int dummy; } ;


 scalar_t__ SNDRV_SEQ_CLIENT_SYSTEM ;
 int snd_opl3_synth_cleanup (struct snd_opl3*) ;
 int snd_opl3_synth_use_dec (struct snd_opl3*) ;

__attribute__((used)) static int snd_opl3_synth_unuse(void *private_data, struct snd_seq_port_subscribe * info)
{
 struct snd_opl3 *opl3 = private_data;

 snd_opl3_synth_cleanup(opl3);

 if (info->sender.client != SNDRV_SEQ_CLIENT_SYSTEM)
  snd_opl3_synth_use_dec(opl3);
 return 0;
}
