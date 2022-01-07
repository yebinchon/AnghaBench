
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int ifcdev; TYPE_1__* properties; struct snd_card* card; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct TYPE_2__ {char* name; } ;


 char* DRIVER_NAME ;
 int THIS_MODULE ;
 char* dev_name (int ) ;
 int * line6_id ;
 int * line6_index ;
 int snd_card_create (int ,int ,int ,int ,struct snd_card**) ;
 int sprintf (int ,char*,char*,char*) ;
 int strcpy (int ,char*) ;

int line6_init_audio(struct usb_line6 *line6)
{
 static int dev;
 struct snd_card *card;
 int err;

 err = snd_card_create(line6_index[dev], line6_id[dev], THIS_MODULE, 0,
         &card);
 if (err < 0)
  return err;

 line6->card = card;

 strcpy(card->driver, DRIVER_NAME);
 strcpy(card->shortname, "Line6-USB");
 sprintf(card->longname, "Line6 %s at USB %s", line6->properties->name,
  dev_name(line6->ifcdev));
 return 0;
}
