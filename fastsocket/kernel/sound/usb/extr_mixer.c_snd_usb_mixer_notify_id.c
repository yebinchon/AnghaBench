
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {TYPE_1__* chip; struct usb_mixer_elem_info** id_elems; } ;
struct usb_mixer_elem_info {int elem_id; struct usb_mixer_elem_info* next_id_elem; } ;
struct TYPE_2__ {int card; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int ,int ) ;

void snd_usb_mixer_notify_id(struct usb_mixer_interface *mixer, int unitid)
{
 struct usb_mixer_elem_info *info;

 for (info = mixer->id_elems[unitid]; info; info = info->next_id_elem)
  snd_ctl_notify(mixer->chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
          info->elem_id);
}
