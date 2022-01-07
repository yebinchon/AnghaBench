
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct snd_soc_codec* disc_data; } ;
struct snd_soc_codec {int dummy; } ;
struct TYPE_4__ {int pins; } ;
struct TYPE_3__ {int (* close ) (struct tty_struct*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_2__ ams_delta_hook_switch ;
 int cx81801_timer ;
 int del_timer_sync (int *) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int stub1 (struct tty_struct*) ;
 TYPE_1__ v253_ops ;

__attribute__((used)) static void cx81801_close(struct tty_struct *tty)
{
 struct snd_soc_codec *codec = tty->disc_data;

 del_timer_sync(&cx81801_timer);

 v253_ops.close(tty);


 INIT_LIST_HEAD(&ams_delta_hook_switch.pins);


 snd_soc_dapm_disable_pin(codec, "Mouthpiece");
 snd_soc_dapm_enable_pin(codec, "Earpiece");
 snd_soc_dapm_enable_pin(codec, "Microphone");
 snd_soc_dapm_disable_pin(codec, "Speaker");
 snd_soc_dapm_disable_pin(codec, "AGCIN");
 snd_soc_dapm_sync(codec);
}
