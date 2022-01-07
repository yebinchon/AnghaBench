
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {struct snd_soc_codec* disc_data; } ;
struct snd_soc_codec {TYPE_2__* socdev; int control_data; } ;
struct TYPE_6__ {int (* receive_buf ) (struct tty_struct*,unsigned char const*,char*,int) ;} ;
struct TYPE_5__ {TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int AMS_DELTA_LATCH2_MODEM_CODEC ;
 int ARRAY_SIZE (int ) ;
 int ams_delta_hook_switch ;
 int ams_delta_hook_switch_pins ;
 int ams_delta_latch2_write (int ,int ) ;
 int ams_delta_lock ;
 int ams_delta_muted ;
 int cx81801_cmd_pending ;
 int cx81801_timeout ;
 int cx81801_timer ;
 int dev_warn (int ,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int setup_timer (int *,int ,int ) ;
 int snd_soc_jack_add_pins (int *,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct tty_struct*,unsigned char const*,char*,int) ;
 int stub2 (struct tty_struct*,unsigned char const*,char*,int) ;
 TYPE_3__ v253_ops ;

__attribute__((used)) static void cx81801_receive(struct tty_struct *tty,
    const unsigned char *cp, char *fp, int count)
{
 struct snd_soc_codec *codec = tty->disc_data;
 const unsigned char *c;
 int apply, ret;

 if (!codec->control_data) {



  setup_timer(&cx81801_timer, cx81801_timeout, 0);

  v253_ops.receive_buf(tty, cp, fp, count);


  ret = snd_soc_jack_add_pins(&ams_delta_hook_switch,
     ARRAY_SIZE(ams_delta_hook_switch_pins),
     ams_delta_hook_switch_pins);
  if (ret)
   dev_warn(codec->socdev->card->dev,
    "Failed to link hook switch to DAPM pins, "
    "will continue with hook switch unlinked.\n");

  return;
 }

 v253_ops.receive_buf(tty, cp, fp, count);

 for (c = &cp[count - 1]; c >= cp; c--) {
  if (*c != '\r')
   continue;


  spin_lock_bh(&ams_delta_lock);
  mod_timer(&cx81801_timer, jiffies + msecs_to_jiffies(150));
  apply = !ams_delta_muted && !cx81801_cmd_pending;
  cx81801_cmd_pending = 1;
  spin_unlock_bh(&ams_delta_lock);



  if (apply)
   ams_delta_latch2_write(AMS_DELTA_LATCH2_MODEM_CODEC,
      AMS_DELTA_LATCH2_MODEM_CODEC);
  break;
 }
}
