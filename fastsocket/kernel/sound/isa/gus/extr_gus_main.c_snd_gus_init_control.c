
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int card; int ace_flag; } ;


 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_gus_card*) ;
 int snd_gus_joystick_control ;

__attribute__((used)) static void snd_gus_init_control(struct snd_gus_card *gus)
{
 if (!gus->ace_flag)
  snd_ctl_add(gus->card, snd_ctl_new1(&snd_gus_joystick_control, gus));
}
