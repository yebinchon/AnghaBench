
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int type; int card; } ;
struct snd_vxpocket {scalar_t__ mic_level; } ;




 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_vxpocket*) ;
 int vx_control_mic_boost ;
 int vx_control_mic_level ;
 int vx_set_mic_boost (struct vx_core*,int ) ;
 int vx_set_mic_level (struct vx_core*,int ) ;

int vxp_add_mic_controls(struct vx_core *_chip)
{
 struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;
 int err;


 chip->mic_level = 0;
 switch (_chip->type) {
 case 128:
  vx_set_mic_level(_chip, 0);
  break;
 case 129:
  vx_set_mic_boost(_chip, 0);
  break;
 }


 switch (_chip->type) {
 case 128:
  if ((err = snd_ctl_add(_chip->card, snd_ctl_new1(&vx_control_mic_level, chip))) < 0)
   return err;
  break;
 case 129:
  if ((err = snd_ctl_add(_chip->card, snd_ctl_new1(&vx_control_mic_boost, chip))) < 0)
   return err;
  break;
 }

 return 0;
}
