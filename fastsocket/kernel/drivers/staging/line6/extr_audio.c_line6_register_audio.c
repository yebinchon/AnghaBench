
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int card; } ;


 int snd_card_register (int ) ;

int line6_register_audio(struct usb_line6 *line6)
{
 int err;

 err = snd_card_register(line6->card);
 if (err < 0)
  return err;

 return 0;
}
