
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usX2Ydev {struct snd_usX2Y_substream* prepare_subs; } ;
struct snd_usX2Y_substream {TYPE_1__** urb; struct usX2Ydev* usX2Y; } ;
struct TYPE_2__ {int start_frame; } ;


 int i_usX2Y_usbpcm_subs_startup ;
 int smp_wmb () ;
 int usX2Y_urbs_set_complete (struct usX2Ydev*,int ) ;

__attribute__((used)) static void usX2Y_usbpcm_subs_startup(struct snd_usX2Y_substream *subs)
{
 struct usX2Ydev * usX2Y = subs->usX2Y;
 usX2Y->prepare_subs = subs;
 subs->urb[0]->start_frame = -1;
 smp_wmb();
 usX2Y_urbs_set_complete(usX2Y, i_usX2Y_usbpcm_subs_startup);
}
