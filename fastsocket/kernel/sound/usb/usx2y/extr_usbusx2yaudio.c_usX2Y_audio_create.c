
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_card {int dummy; } ;
struct TYPE_7__ {TYPE_2__* dev; int pcm_list; } ;
struct TYPE_5__ {int idProduct; } ;
struct TYPE_6__ {TYPE_1__ descriptor; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ USB_ID_US122 ;
 scalar_t__ USB_ID_US428 ;
 scalar_t__ le16_to_cpu (int ) ;
 TYPE_3__* usX2Y (struct snd_card*) ;
 int usX2Y_audio_stream_new (struct snd_card*,int,int) ;
 int usX2Y_rate_set (TYPE_3__*,int) ;

int usX2Y_audio_create(struct snd_card *card)
{
 int err = 0;

 INIT_LIST_HEAD(&usX2Y(card)->pcm_list);

 if (0 > (err = usX2Y_audio_stream_new(card, 0xA, 0x8)))
  return err;
 if (le16_to_cpu(usX2Y(card)->dev->descriptor.idProduct) == USB_ID_US428)
      if (0 > (err = usX2Y_audio_stream_new(card, 0, 0xA)))
       return err;
 if (le16_to_cpu(usX2Y(card)->dev->descriptor.idProduct) != USB_ID_US122)
  err = usX2Y_rate_set(usX2Y(card), 44100);
 return err;
}
