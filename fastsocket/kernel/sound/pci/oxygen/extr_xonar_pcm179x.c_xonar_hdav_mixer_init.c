
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int add_pcm1796_controls (struct oxygen*) ;
 int hdav_hdmi_control ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct oxygen*) ;

__attribute__((used)) static int xonar_hdav_mixer_init(struct oxygen *chip)
{
 int err;

 err = snd_ctl_add(chip->card, snd_ctl_new1(&hdav_hdmi_control, chip));
 if (err < 0)
  return err;
 err = add_pcm1796_controls(chip);
 if (err < 0)
  return err;
 return 0;
}
