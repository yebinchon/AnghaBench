
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {int xonar_u1_status; TYPE_1__* chip; } ;
struct TYPE_2__ {int card; } ;


 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct usb_mixer_interface*) ;
 int snd_xonar_u1_output_switch ;

__attribute__((used)) static int snd_xonar_u1_controls_create(struct usb_mixer_interface *mixer)
{
 int err;

 err = snd_ctl_add(mixer->chip->card,
     snd_ctl_new1(&snd_xonar_u1_output_switch, mixer));
 if (err < 0)
  return err;
 mixer->xonar_u1_status = 0x05;
 return 0;
}
