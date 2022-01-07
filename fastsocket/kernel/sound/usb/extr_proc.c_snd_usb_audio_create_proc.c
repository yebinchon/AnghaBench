
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int card; } ;
struct snd_info_entry {int dummy; } ;


 int proc_audio_usbbus_read ;
 int proc_audio_usbid_read ;
 int snd_card_proc_new (int ,char*,struct snd_info_entry**) ;
 int snd_info_set_text_ops (struct snd_info_entry*,struct snd_usb_audio*,int ) ;

void snd_usb_audio_create_proc(struct snd_usb_audio *chip)
{
 struct snd_info_entry *entry;
 if (!snd_card_proc_new(chip->card, "usbbus", &entry))
  snd_info_set_text_ops(entry, chip, proc_audio_usbbus_read);
 if (!snd_card_proc_new(chip->card, "usbid", &entry))
  snd_info_set_text_ops(entry, chip, proc_audio_usbid_read);
}
