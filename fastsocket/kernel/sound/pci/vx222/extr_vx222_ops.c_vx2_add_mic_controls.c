
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {scalar_t__ type; int card; } ;
struct snd_vx222 {scalar_t__ mic_level; scalar_t__* input_level; } ;


 scalar_t__ VX_TYPE_MIC ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_vx222*) ;
 int vx2_set_input_level (struct snd_vx222*) ;
 int vx_control_input_level ;
 int vx_control_mic_level ;

__attribute__((used)) static int vx2_add_mic_controls(struct vx_core *_chip)
{
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;
 int err;

 if (_chip->type != VX_TYPE_MIC)
  return 0;


 chip->input_level[0] = chip->input_level[1] = 0;
 chip->mic_level = 0;
 vx2_set_input_level(chip);


 if ((err = snd_ctl_add(_chip->card, snd_ctl_new1(&vx_control_input_level, chip))) < 0)
  return err;
 if ((err = snd_ctl_add(_chip->card, snd_ctl_new1(&vx_control_mic_level, chip))) < 0)
  return err;

 return 0;
}
