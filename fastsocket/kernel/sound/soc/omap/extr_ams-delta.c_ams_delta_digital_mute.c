
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int AMS_DELTA_LATCH2_MODEM_CODEC ;
 int ams_delta_latch2_write (int ,int ) ;
 int ams_delta_lock ;
 int ams_delta_muted ;
 int cx81801_cmd_pending ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ams_delta_digital_mute(struct snd_soc_dai *dai, int mute)
{
 int apply;

 if (ams_delta_muted == mute)
  return 0;

 spin_lock_bh(&ams_delta_lock);
 ams_delta_muted = mute;
 apply = !cx81801_cmd_pending;
 spin_unlock_bh(&ams_delta_lock);

 if (apply)
  ams_delta_latch2_write(AMS_DELTA_LATCH2_MODEM_CODEC,
    mute ? AMS_DELTA_LATCH2_MODEM_CODEC : 0);
 return 0;
}
