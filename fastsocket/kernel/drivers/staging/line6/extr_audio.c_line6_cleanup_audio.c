
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {struct snd_card* card; } ;
struct snd_card {int dummy; } ;


 int snd_card_disconnect (struct snd_card*) ;
 int snd_card_free (struct snd_card*) ;

void line6_cleanup_audio(struct usb_line6 *line6)
{
 struct snd_card *card = line6->card;

 if (card == ((void*)0))
  return;

 snd_card_disconnect(card);
 snd_card_free(card);
 line6->card = ((void*)0);
}
