
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {int * card; scalar_t__ control; scalar_t__ comm; scalar_t__ midi; scalar_t__ pcm; } ;


 int snd_card_disconnect (int *) ;
 int snd_card_free_when_closed (int *) ;
 int usb6fire_comm_abort (struct sfire_chip*) ;
 int usb6fire_control_abort (struct sfire_chip*) ;
 int usb6fire_midi_abort (struct sfire_chip*) ;
 int usb6fire_pcm_abort (struct sfire_chip*) ;

__attribute__((used)) static void usb6fire_chip_abort(struct sfire_chip *chip)
{
 if (chip) {
  if (chip->pcm)
   usb6fire_pcm_abort(chip);
  if (chip->midi)
   usb6fire_midi_abort(chip);
  if (chip->comm)
   usb6fire_comm_abort(chip);
  if (chip->control)
   usb6fire_control_abort(chip);
  if (chip->card) {
   snd_card_disconnect(chip->card);
   snd_card_free_when_closed(chip->card);
   chip->card = ((void*)0);
  }
 }
}
